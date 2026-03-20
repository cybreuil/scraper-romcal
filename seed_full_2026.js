#!/usr/bin/env node

/**
 * Generate SQL seed for full liturgical calendar year from romcal.
 *
 * Usage:
 *   node data/scripts/romcal_seed_2026.mjs 2026 data/seed_calendar_2026.sql en
 *
 * Args:
 *   [0] year (default: 2026)
 *   [1] output SQL path (default: data/seed_calendar_<year>.sql)
 *   [2] locale code for feast_translations (default: en)
 *
 * Notes:
 * - This script seeds resolved dates for one year (static annual snapshot).
 * - It expects calendars / liturgical_ranks / liturgical_colors already seeded.
 * - Calendar target is ROMAN_GENERAL_1969.
 */

import fs from "node:fs";
import path from "node:path";
import { Romcal } from "romcal";
import { GeneralRoman_En } from "@romcal/calendar.general-roman";
import { France_Fr } from "@romcal/calendar.france";

const year = Number(process.argv[2] || 2026);
const outFile = process.argv[3] || `data/seed_calendar_${year}.sql`;
const locale = (process.argv[4] || "en").toLowerCase();

// Select romcal localized bundle
const localizedCalendar = locale === "fr" ? France_Fr : GeneralRoman_En;

// Calendar options — adapt if needed
const romcal = new Romcal({
	localizedCalendar,
	scope: "gregorian",
	epiphanyOnSunday: false,
	ascensionOnSunday: false,
	corpusChristiOnSunday: false,
});

function esc(v) {
	if (v === null || v === undefined) return "NULL";
	return `'${String(v).replaceAll("'", "''")}'`;
}

function slugify(s) {
	return String(s || "")
		.toLowerCase()
		.normalize("NFKD")
		.replace(/[\u0300-\u036f]/g, "")
		.replace(/[^a-z0-9_]+/g, "-") // keep underscore from romcal keys if present
		.replace(/^-+|-+$/g, "");
}

function rankCodeFromRomcal(day) {
	const rank = String(day.rank || "").toUpperCase();
	if (rank === "SOLEMNITY") return "SOLEMNITY";
	if (rank === "FEAST") return "FEAST";
	if (rank === "MEMORIAL") return day.isOptional ? "MEM_OPT" : "MEM_OBL";
	if (rank === "OPT_MEMORIAL") return "MEM_OPT";
	if (rank === "COMMEMORATION") return "MEM_OPT";
	if (rank === "WEEKDAY") return "FERIA";
	// fallback for SUNDAY / TRIDUUM / HOLY_WEEK etc.
	return "SOLEMNITY";
}

function colorCodeFromRomcal(day) {
	// v2/v3 can expose either liturgicalColors or colors depending on build/docs
	const arr = Array.isArray(day.liturgicalColors)
		? day.liturgicalColors
		: Array.isArray(day.colors)
			? day.colors
			: [];
	if (!arr.length) return null;
	return String(arr[0]).toUpperCase();
}

function feastTypeFromDay(day) {
	const key = String(day.key || "").toLowerCase();
	const name = String(day.name || "").toLowerCase();
	const titles = Array.isArray(day?.metadata?.titles)
		? day.metadata.titles.map((t) => String(t).toUpperCase())
		: Array.isArray(day?.titles)
			? day.titles.map((t) => String(t).toUpperCase())
			: [];

	if (
		titles.includes("MARIAN_FEAST") ||
		key.includes("our_lady") ||
		name.includes("mary")
	)
		return "marian";
	if (
		titles.includes("FEAST_OF_THE_LORD") ||
		key.includes("jesus") ||
		key.includes("christ")
	)
		return "christological";
	if (key.includes("dedication")) return "dedication";

	// fallback: saint-ish if key/name indicates person
	if (
		key.includes("saint") ||
		key.includes("martyr") ||
		key.includes("apostle") ||
		key.includes("bishop") ||
		key.includes("pope") ||
		key.includes("virgin") ||
		name.includes("saint")
	)
		return "saint";

	return "other";
}

function parseMonthDay(isoDate) {
	// romcal date can be 'YYYY-MM-DD' or ISO datetime
	const d = new Date(isoDate);
	return { month: d.getUTCMonth() + 1, day: d.getUTCDate() };
}

const calendar = await romcal.generateCalendar(year);

const rankSet = new Set();
for (const days of Object.values(calendar)) {
	for (const d of days) rankSet.add(String(d.rank || ""));
}
console.log("Ranks seen in runtime:", [...rankSet].sort());

// Flatten date -> days[]
const flattened = [];
for (const [dateKey, days] of Object.entries(calendar)) {
	if (!Array.isArray(days)) continue;
	for (const day of days) {
		flattened.push({
			date: day.date || dateKey,
			key: day.key,
			name: day.name,
			rank: day.rank,
			rankName: day.rankName,
			isOptional: !!day.isOptional,
			liturgicalColors: day.liturgicalColors || day.colors || [],
			metadata: day.metadata || null,
			titles: day.titles || null,
			fromCalendar: day.fromCalendar || null,
			precedence: day.precedence || null,
		});
	}
}

// Deduplicate by date+key
const uniq = [];
const seen = new Set();
for (const row of flattened) {
	const k = `${row.date}__${row.key}`;
	if (seen.has(k)) continue;
	seen.add(k);
	uniq.push(row);
}

const lines = [];
lines.push(`-- romcal yearly seed`);
lines.push(
	`-- year: ${year}, locale: ${locale}, generated: ${new Date().toISOString()}`,
);
lines.push(`-- target calendar: ROMAN_GENERAL_1969`);
lines.push("");
lines.push("BEGIN;");
lines.push("");

for (const row of uniq) {
	const slug = slugify(row.key || row.name || `${year}-unknown`);
	const defaultName = row.name || row.key || slug;
	const feastType = feastTypeFromDay(row);
	const rankCode = rankCodeFromRomcal(row);
	const colorCode = colorCodeFromRomcal(row);
	const md = parseMonthDay(row.date);
	const sourceNote = `romcal:${year}:${row.key}:${row.precedence || ""}:${row.rank || ""}`;

	// 1) feasts
	lines.push(`-- ${row.date} :: ${row.key}`);
	lines.push(`INSERT INTO feasts (slug, default_name, feast_type)
VALUES (${esc(slug)}, ${esc(defaultName)}, ${esc(feastType)})
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;`);

	// 2) feast_translations
	lines.push(`INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, ${esc(locale)}, ${esc(defaultName)}, NULL
FROM feasts f
WHERE f.slug = ${esc(slug)}
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;`);

	// 3) feast_dates (resolved fixed date snapshot for this year)
	lines.push(`INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', ${md.month}, ${md.day},
    NULL, NULL,
    ${esc(`${year}-01-01`)}, ${esc(`${year}-12-31`)},
    ${esc(sourceNote)}
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = ${esc(slug)};`);

	// 4) celebrations
	lines.push(`INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    ${row.isOptional ? "TRUE" : "FALSE"},
    ${esc(sourceNote)}
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = ${esc(rankCode)}
LEFT JOIN liturgical_colors clr ON clr.code = ${esc(colorCode)}
WHERE f.slug = ${esc(slug)}
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;`);
	lines.push("");
}

lines.push("COMMIT;");
lines.push("");

fs.mkdirSync(path.dirname(outFile), { recursive: true });
fs.writeFileSync(outFile, lines.join("\n"), "utf8");

console.log(`✅ Generated: ${outFile}`);
console.log(`✅ Rows exported (date+key): ${uniq.length}`);
