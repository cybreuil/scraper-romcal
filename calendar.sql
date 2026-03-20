-- romcal yearly seed
-- year: 2026, locale: en, generated: 2026-03-20T17:45:14.413Z
-- target calendar: ROMAN_GENERAL_1969

BEGIN;

-- 2026-01-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-octave-day-of-the-nativity-of-the-lord-solemnity-of-mary-the-holy-mother-of-god', 'The Octave Day of the Nativity of the Lord: Solemnity of Mary, the Holy Mother of God', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Octave Day of the Nativity of the Lord: Solemnity of Mary, the Holy Mother of God', NULL
FROM feasts f
WHERE f.slug = 'the-octave-day-of-the-nativity-of-the-lord-solemnity-of-mary-the-holy-mother-of-god'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-octave-day-of-the-nativity-of-the-lord-solemnity-of-mary-the-holy-mother-of-god';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-octave-day-of-the-nativity-of-the-lord-solemnity-of-mary-the-holy-mother-of-god'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Saints Basil the Great and Gregory Nazianzen, Bishops and Doctors of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saints Basil the Great and Gregory Nazianzen, Bishops and Doctors of the Church', NULL
FROM feasts f
WHERE f.slug = 'saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('january-3', 'January 3', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'January 3', NULL
FROM feasts f
WHERE f.slug = 'january-3'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'january-3';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'january-3'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('second-sunday-after-the-nativity-of-the-lord', 'Second Sunday after the Nativity of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Second Sunday after the Nativity of the Lord', NULL
FROM feasts f
WHERE f.slug = 'second-sunday-after-the-nativity-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'second-sunday-after-the-nativity-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'second-sunday-after-the-nativity-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('january-5', 'January 5', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'January 5', NULL
FROM feasts f
WHERE f.slug = 'january-5'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'january-5';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'january-5'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-epiphany-of-the-lord', 'The Epiphany of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Epiphany of the Lord', NULL
FROM feasts f
WHERE f.slug = 'the-epiphany-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-epiphany-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-epiphany-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-after-the-epiphany-of-the-lord', 'Wednesday after the Epiphany of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday after the Epiphany of the Lord', NULL
FROM feasts f
WHERE f.slug = 'wednesday-after-the-epiphany-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-after-the-epiphany-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'wednesday-after-the-epiphany-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-after-the-epiphany-of-the-lord', 'Thursday after the Epiphany of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday after the Epiphany of the Lord', NULL
FROM feasts f
WHERE f.slug = 'thursday-after-the-epiphany-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-after-the-epiphany-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'thursday-after-the-epiphany-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-after-the-epiphany-of-the-lord', 'Friday after the Epiphany of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday after the Epiphany of the Lord', NULL
FROM feasts f
WHERE f.slug = 'friday-after-the-epiphany-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-after-the-epiphany-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'friday-after-the-epiphany-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-after-the-epiphany-of-the-lord', 'Saturday after the Epiphany of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday after the Epiphany of the Lord', NULL
FROM feasts f
WHERE f.slug = 'saturday-after-the-epiphany-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-after-the-epiphany-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saturday-after-the-epiphany-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-baptism-of-the-lord', 'The Baptism of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Baptism of the Lord', NULL
FROM feasts f
WHERE f.slug = 'the-baptism-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-baptism-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-baptism-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-first-week-of-ordinary-time', 'Monday of the first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-first-week-of-ordinary-time', 'Tuesday of the first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-first-week-of-ordinary-time', 'Wednesday of the first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-first-week-of-ordinary-time', 'Thursday of the first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-first-week-of-ordinary-time', 'Friday of the first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-anthony-abbot', 'Saint Anthony, Abbot', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Anthony, Abbot', NULL
FROM feasts f
WHERE f.slug = 'saint-anthony-abbot'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-anthony-abbot';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-anthony-abbot'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('second-sunday-in-ordinary-time', 'Second Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Second Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'second-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'second-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'second-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-second-week-of-ordinary-time', 'Monday of the second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-second-week-of-ordinary-time', 'Tuesday of the second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-agnes-virgin-and-martyr', 'Saint Agnes, Virgin and Martyr', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Agnes, Virgin and Martyr', NULL
FROM feasts f
WHERE f.slug = 'saint-agnes-virgin-and-martyr'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-agnes-virgin-and-martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-agnes-virgin-and-martyr'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-second-week-of-ordinary-time', 'Thursday of the second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-second-week-of-ordinary-time', 'Friday of the second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Saint Francis de Sales, Bishop and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Francis de Sales, Bishop and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-francis-de-sales-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-francis-de-sales-bishop-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-francis-de-sales-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('third-sunday-in-ordinary-time-or-sunday-of-the-word-of-god', 'Third Sunday in Ordinary Time, or Sunday of the Word of God', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Third Sunday in Ordinary Time, or Sunday of the Word of God', NULL
FROM feasts f
WHERE f.slug = 'third-sunday-in-ordinary-time-or-sunday-of-the-word-of-god'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'third-sunday-in-ordinary-time-or-sunday-of-the-word-of-god';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'third-sunday-in-ordinary-time-or-sunday-of-the-word-of-god'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saints-timothy-and-titus-bishops', 'Saints Timothy and Titus, Bishops', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saints Timothy and Titus, Bishops', NULL
FROM feasts f
WHERE f.slug = 'saints-timothy-and-titus-bishops'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saints-timothy-and-titus-bishops';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saints-timothy-and-titus-bishops'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-third-week-of-ordinary-time', 'Tuesday of the third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Saint Thomas Aquinas, Priest and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Thomas Aquinas, Priest and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-thomas-aquinas-priest-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-thomas-aquinas-priest-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-thomas-aquinas-priest-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-third-week-of-ordinary-time', 'Thursday of the third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-third-week-of-ordinary-time', 'Friday of the third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-01-31 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-john-bosco-priest', 'Saint John Bosco, Priest', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint John Bosco, Priest', NULL
FROM feasts f
WHERE f.slug = 'saint-john-bosco-priest'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 1, 31,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-john-bosco-priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-john-bosco-priest'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fourth-sunday-in-ordinary-time', 'Fourth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fourth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'fourth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fourth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'fourth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-presentation-of-the-lord', 'The Presentation of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Presentation of the Lord', NULL
FROM feasts f
WHERE f.slug = 'the-presentation-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_LORD_FEAST_5:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-presentation-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_LORD_FEAST_5:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-presentation-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-fourth-week-of-ordinary-time', 'Tuesday of the fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-fourth-week-of-ordinary-time', 'Wednesday of the fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-agatha-virgin-and-martyr', 'Saint Agatha, Virgin and Martyr', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Agatha, Virgin and Martyr', NULL
FROM feasts f
WHERE f.slug = 'saint-agatha-virgin-and-martyr'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-agatha-virgin-and-martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-agatha-virgin-and-martyr'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-paul-miki-and-companions-martyrs', 'Saint Paul Miki and Companions, Martyrs', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Paul Miki and Companions, Martyrs', NULL
FROM feasts f
WHERE f.slug = 'saint-paul-miki-and-companions-martyrs'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-paul-miki-and-companions-martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-paul-miki-and-companions-martyrs'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-fourth-week-of-ordinary-time', 'Saturday of the fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fifth-sunday-in-ordinary-time', 'Fifth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fifth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'fifth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fifth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'fifth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-fifth-week-of-ordinary-time', 'Monday of the fifth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the fifth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-fifth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-scholastica-virgin', 'Saint Scholastica, Virgin', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Scholastica, Virgin', NULL
FROM feasts f
WHERE f.slug = 'saint-scholastica-virgin'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-scholastica-virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-scholastica-virgin'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-fifth-week-of-ordinary-time', 'Wednesday of the fifth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the fifth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-fifth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-fifth-week-of-ordinary-time', 'Thursday of the fifth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the fifth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-fifth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-fifth-week-of-ordinary-time', 'Friday of the fifth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the fifth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-fifth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saints-cyril-monk-and-methodius-bishop', 'Saints Cyril, Monk, and Methodius, Bishop', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saints Cyril, Monk, and Methodius, Bishop', NULL
FROM feasts f
WHERE f.slug = 'saints-cyril-monk-and-methodius-bishop'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saints-cyril-monk-and-methodius-bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saints-cyril-monk-and-methodius-bishop'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('sixth-sunday-in-ordinary-time', 'Sixth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Sixth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'sixth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'sixth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'sixth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-sixth-week-of-ordinary-time', 'Monday of the sixth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the sixth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-sixth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-sixth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-sixth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-sixth-week-of-ordinary-time', 'Tuesday of the sixth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the sixth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-sixth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-sixth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-sixth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('ash-wednesday', 'Ash Wednesday', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Ash Wednesday', NULL
FROM feasts f
WHERE f.slug = 'ash-wednesday'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:ASH_WEDNESDAY_2:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'ash-wednesday';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:ASH_WEDNESDAY_2:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'ash-wednesday'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-after-ash-wednesday', 'Thursday after Ash Wednesday', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday after Ash Wednesday', NULL
FROM feasts f
WHERE f.slug = 'thursday-after-ash-wednesday'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-after-ash-wednesday';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'thursday-after-ash-wednesday'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-after-ash-wednesday', 'Friday after Ash Wednesday', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday after Ash Wednesday', NULL
FROM feasts f
WHERE f.slug = 'friday-after-ash-wednesday'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-after-ash-wednesday';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'friday-after-ash-wednesday'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-after-ash-wednesday', 'Saturday after Ash Wednesday', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday after Ash Wednesday', NULL
FROM feasts f
WHERE f.slug = 'saturday-after-ash-wednesday'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-after-ash-wednesday';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'saturday-after-ash-wednesday'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('first-sunday-of-lent', 'First Sunday of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'First Sunday of Lent', NULL
FROM feasts f
WHERE f.slug = 'first-sunday-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'first-sunday-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'first-sunday-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-first-week-of-lent', 'Monday of the first week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the first week of Lent', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-first-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'monday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-first-week-of-lent', 'Tuesday of the first week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the first week of Lent', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-first-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'tuesday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-first-week-of-lent', 'Wednesday of the first week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the first week of Lent', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-first-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'wednesday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-first-week-of-lent', 'Thursday of the first week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the first week of Lent', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-first-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'thursday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-first-week-of-lent', 'Friday of the first week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the first week of Lent', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-first-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'friday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-02-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-first-week-of-lent', 'Saturday of the first week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the first week of Lent', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 2, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-first-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'saturday-of-the-first-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('second-sunday-of-lent', 'Second Sunday of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Second Sunday of Lent', NULL
FROM feasts f
WHERE f.slug = 'second-sunday-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'second-sunday-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'second-sunday-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-second-week-of-lent', 'Monday of the second week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the second week of Lent', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-second-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'monday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-second-week-of-lent', 'Tuesday of the second week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the second week of Lent', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-second-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'tuesday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-second-week-of-lent', 'Wednesday of the second week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the second week of Lent', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-second-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'wednesday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-second-week-of-lent', 'Thursday of the second week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the second week of Lent', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-second-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'thursday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-second-week-of-lent', 'Friday of the second week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the second week of Lent', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-second-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'friday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-second-week-of-lent', 'Saturday of the second week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the second week of Lent', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-second-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'saturday-of-the-second-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('third-sunday-of-lent', 'Third Sunday of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Third Sunday of Lent', NULL
FROM feasts f
WHERE f.slug = 'third-sunday-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'third-sunday-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'third-sunday-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-third-week-of-lent', 'Monday of the third week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the third week of Lent', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-third-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'monday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-third-week-of-lent', 'Tuesday of the third week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the third week of Lent', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-third-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'tuesday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-third-week-of-lent', 'Wednesday of the third week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the third week of Lent', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-third-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'wednesday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-third-week-of-lent', 'Thursday of the third week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the third week of Lent', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-third-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'thursday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-third-week-of-lent', 'Friday of the third week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the third week of Lent', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-third-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'friday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-third-week-of-lent', 'Saturday of the third week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the third week of Lent', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-third-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'saturday-of-the-third-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fourth-sunday-of-lent', 'Fourth Sunday of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fourth Sunday of Lent', NULL
FROM feasts f
WHERE f.slug = 'fourth-sunday-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fourth-sunday-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'ROSE'
WHERE f.slug = 'fourth-sunday-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-fourth-week-of-lent', 'Monday of the fourth week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the fourth week of Lent', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-fourth-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-fourth-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'monday-of-the-fourth-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-fourth-week-of-lent', 'Tuesday of the fourth week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the fourth week of Lent', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-fourth-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-fourth-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'tuesday-of-the-fourth-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-fourth-week-of-lent', 'Wednesday of the fourth week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the fourth week of Lent', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-fourth-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-fourth-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'wednesday-of-the-fourth-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Saint Joseph, Spouse of the Blessed Virgin Mary', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Joseph, Spouse of the Blessed Virgin Mary', NULL
FROM feasts f
WHERE f.slug = 'saint-joseph-spouse-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-joseph-spouse-of-the-blessed-virgin-mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-joseph-spouse-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-fourth-week-of-lent', 'Friday of the fourth week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the fourth week of Lent', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-fourth-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-fourth-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'friday-of-the-fourth-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-fourth-week-of-lent', 'Saturday of the fourth week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the fourth week of Lent', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-fourth-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-fourth-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'saturday-of-the-fourth-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fifth-sunday-of-lent', 'Fifth Sunday of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fifth Sunday of Lent', NULL
FROM feasts f
WHERE f.slug = 'fifth-sunday-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fifth-sunday-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'fifth-sunday-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-fifth-week-of-lent', 'Monday of the fifth week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the fifth week of Lent', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-fifth-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-fifth-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'monday-of-the-fifth-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-fifth-week-of-lent', 'Tuesday of the fifth week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the fifth week of Lent', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-fifth-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-fifth-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'tuesday-of-the-fifth-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-annunciation-of-the-lord', 'The Annunciation of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Annunciation of the Lord', NULL
FROM feasts f
WHERE f.slug = 'the-annunciation-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-annunciation-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-annunciation-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-fifth-week-of-lent', 'Thursday of the fifth week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the fifth week of Lent', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-fifth-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-fifth-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'thursday-of-the-fifth-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-fifth-week-of-lent', 'Friday of the fifth week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the fifth week of Lent', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-fifth-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-fifth-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'friday-of-the-fifth-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-fifth-week-of-lent', 'Saturday of the fifth week of Lent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the fifth week of Lent', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-fifth-week-of-lent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-fifth-week-of-lent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'saturday-of-the-fifth-week-of-lent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('palm-sunday-of-the-passion-of-the-lord', 'Palm Sunday of the Passion of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Palm Sunday of the Passion of the Lord', NULL
FROM feasts f
WHERE f.slug = 'palm-sunday-of-the-passion-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'palm-sunday-of-the-passion-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'palm-sunday-of-the-passion-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-holy-week', 'Monday of Holy Week', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of Holy Week', NULL
FROM feasts f
WHERE f.slug = 'monday-of-holy-week'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-holy-week';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'monday-of-holy-week'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-03-31 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-holy-week', 'Tuesday of Holy Week', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of Holy Week', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-holy-week'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 3, 31,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-holy-week';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'tuesday-of-holy-week'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-holy-week', 'Wednesday of Holy Week', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of Holy Week', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-holy-week'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-holy-week';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'wednesday-of-holy-week'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-holy-week', 'Thursday of Holy Week', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of Holy Week', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-holy-week'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-holy-week';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'thursday-of-holy-week'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-passion-of-the-lord', 'Friday of the Passion of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the Passion of the Lord', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-passion-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:TRIDUUM_1:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-passion-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:TRIDUUM_1:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'friday-of-the-passion-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('holy-saturday-easter-vigil', 'Holy Saturday/Easter Vigil', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Holy Saturday/Easter Vigil', NULL
FROM feasts f
WHERE f.slug = 'holy-saturday-easter-vigil'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:TRIDUUM_1:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'holy-saturday-easter-vigil';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:TRIDUUM_1:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = NULL
WHERE f.slug = 'holy-saturday-easter-vigil'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('easter-sunday-of-the-resurrection-of-the-lord', 'Easter Sunday of the Resurrection of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Easter Sunday of the Resurrection of the Lord', NULL
FROM feasts f
WHERE f.slug = 'easter-sunday-of-the-resurrection-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:TRIDUUM_1:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'easter-sunday-of-the-resurrection-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:TRIDUUM_1:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'easter-sunday-of-the-resurrection-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-within-the-octave-of-easter', 'Monday within the Octave of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday within the Octave of Easter', NULL
FROM feasts f
WHERE f.slug = 'monday-within-the-octave-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-within-the-octave-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'monday-within-the-octave-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-within-the-octave-of-easter', 'Tuesday within the Octave of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday within the Octave of Easter', NULL
FROM feasts f
WHERE f.slug = 'tuesday-within-the-octave-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-within-the-octave-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'tuesday-within-the-octave-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-within-the-octave-of-easter', 'Wednesday within the Octave of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday within the Octave of Easter', NULL
FROM feasts f
WHERE f.slug = 'wednesday-within-the-octave-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-within-the-octave-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'wednesday-within-the-octave-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-within-the-octave-of-easter', 'Thursday within the Octave of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday within the Octave of Easter', NULL
FROM feasts f
WHERE f.slug = 'thursday-within-the-octave-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-within-the-octave-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'thursday-within-the-octave-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-within-the-octave-of-easter', 'Friday within the Octave of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday within the Octave of Easter', NULL
FROM feasts f
WHERE f.slug = 'friday-within-the-octave-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-within-the-octave-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'friday-within-the-octave-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-within-the-octave-of-easter', 'Saturday within the Octave of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday within the Octave of Easter', NULL
FROM feasts f
WHERE f.slug = 'saturday-within-the-octave-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-within-the-octave-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_OF_EASTER_OCTAVE_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saturday-within-the-octave-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('second-sunday-of-easter-or-sunday-of-divine-mercy', 'Second Sunday of Easter or Sunday of Divine Mercy', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Second Sunday of Easter or Sunday of Divine Mercy', NULL
FROM feasts f
WHERE f.slug = 'second-sunday-of-easter-or-sunday-of-divine-mercy'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'second-sunday-of-easter-or-sunday-of-divine-mercy';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'second-sunday-of-easter-or-sunday-of-divine-mercy'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-second-week-of-easter', 'Monday of the second week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the second week of Easter', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-second-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'monday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-second-week-of-easter', 'Tuesday of the second week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the second week of Easter', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-second-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'tuesday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-second-week-of-easter', 'Wednesday of the second week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the second week of Easter', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-second-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'wednesday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-second-week-of-easter', 'Thursday of the second week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the second week of Easter', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-second-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'thursday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-second-week-of-easter', 'Friday of the second week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the second week of Easter', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-second-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'friday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-second-week-of-easter', 'Saturday of the second week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the second week of Easter', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-second-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saturday-of-the-second-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('third-sunday-of-easter', 'Third Sunday of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Third Sunday of Easter', NULL
FROM feasts f
WHERE f.slug = 'third-sunday-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'third-sunday-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'third-sunday-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-third-week-of-easter', 'Monday of the third week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the third week of Easter', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-third-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-third-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'monday-of-the-third-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-third-week-of-easter', 'Tuesday of the third week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the third week of Easter', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-third-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-third-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'tuesday-of-the-third-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-third-week-of-easter', 'Wednesday of the third week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the third week of Easter', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-third-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-third-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'wednesday-of-the-third-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-third-week-of-easter', 'Thursday of the third week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the third week of Easter', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-third-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-third-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'thursday-of-the-third-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-third-week-of-easter', 'Friday of the third week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the third week of Easter', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-third-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-third-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'friday-of-the-third-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-mark-evangelist', 'Saint Mark, Evangelist', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Mark, Evangelist', NULL
FROM feasts f
WHERE f.slug = 'saint-mark-evangelist'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-mark-evangelist';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-mark-evangelist'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fourth-sunday-of-easter', 'Fourth Sunday of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fourth Sunday of Easter', NULL
FROM feasts f
WHERE f.slug = 'fourth-sunday-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fourth-sunday-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'fourth-sunday-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-fourth-week-of-easter', 'Monday of the fourth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the fourth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-fourth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-fourth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'monday-of-the-fourth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-fourth-week-of-easter', 'Tuesday of the fourth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the fourth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-fourth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-fourth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'tuesday-of-the-fourth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Saint Catherine of Siena, Virgin and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Catherine of Siena, Virgin and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-catherine-of-siena-virgin-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-catherine-of-siena-virgin-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-catherine-of-siena-virgin-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-04-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-fourth-week-of-easter', 'Thursday of the fourth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the fourth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-fourth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 4, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-fourth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'thursday-of-the-fourth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-fourth-week-of-easter', 'Friday of the fourth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the fourth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-fourth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-fourth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'friday-of-the-fourth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-athanasius-bishop-and-doctor-of-the-church', 'Saint Athanasius, Bishop and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Athanasius, Bishop and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-athanasius-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-athanasius-bishop-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-athanasius-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fifth-sunday-of-easter', 'Fifth Sunday of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fifth Sunday of Easter', NULL
FROM feasts f
WHERE f.slug = 'fifth-sunday-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fifth-sunday-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'fifth-sunday-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-fifth-week-of-easter', 'Monday of the fifth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the fifth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-fifth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'monday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-fifth-week-of-easter', 'Tuesday of the fifth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the fifth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-fifth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'tuesday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-fifth-week-of-easter', 'Wednesday of the fifth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the fifth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-fifth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'wednesday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-fifth-week-of-easter', 'Thursday of the fifth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the fifth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-fifth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'thursday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-fifth-week-of-easter', 'Friday of the fifth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the fifth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-fifth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'friday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-fifth-week-of-easter', 'Saturday of the fifth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the fifth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-fifth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saturday-of-the-fifth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('sixth-sunday-of-easter', 'Sixth Sunday of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Sixth Sunday of Easter', NULL
FROM feasts f
WHERE f.slug = 'sixth-sunday-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'sixth-sunday-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'sixth-sunday-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-sixth-week-of-easter', 'Monday of the sixth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the sixth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-sixth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-sixth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'monday-of-the-sixth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-sixth-week-of-easter', 'Tuesday of the sixth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the sixth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-sixth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-sixth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'tuesday-of-the-sixth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-sixth-week-of-easter', 'Wednesday of the sixth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the sixth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-sixth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-sixth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'wednesday-of-the-sixth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-ascension-of-the-lord', 'The Ascension of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Ascension of the Lord', NULL
FROM feasts f
WHERE f.slug = 'the-ascension-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-ascension-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-ascension-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-sixth-week-of-easter', 'Friday of the sixth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the sixth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-sixth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-sixth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'friday-of-the-sixth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-sixth-week-of-easter', 'Saturday of the sixth week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the sixth week of Easter', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-sixth-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-sixth-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saturday-of-the-sixth-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('seventh-sunday-of-easter', 'Seventh Sunday of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Seventh Sunday of Easter', NULL
FROM feasts f
WHERE f.slug = 'seventh-sunday-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'seventh-sunday-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'seventh-sunday-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-seventh-week-of-easter', 'Monday of the seventh week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the seventh week of Easter', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-seventh-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'monday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-seventh-week-of-easter', 'Tuesday of the seventh week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the seventh week of Easter', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-seventh-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'tuesday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-seventh-week-of-easter', 'Wednesday of the seventh week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the seventh week of Easter', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-seventh-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'wednesday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-seventh-week-of-easter', 'Thursday of the seventh week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the seventh week of Easter', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-seventh-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'thursday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-seventh-week-of-easter', 'Friday of the seventh week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the seventh week of Easter', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-seventh-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'friday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-seventh-week-of-easter', 'Saturday of the seventh week of Easter', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the seventh week of Easter', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-seventh-week-of-easter';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saturday-of-the-seventh-week-of-easter'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('pentecost-sunday', 'Pentecost Sunday', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Pentecost Sunday', NULL
FROM feasts f
WHERE f.slug = 'pentecost-sunday'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'pentecost-sunday';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'pentecost-sunday'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('blessed-virgin-mary-mother-of-the-church', 'Blessed Virgin Mary, Mother of the Church', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Blessed Virgin Mary, Mother of the Church', NULL
FROM feasts f
WHERE f.slug = 'blessed-virgin-mary-mother-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'blessed-virgin-mary-mother-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'blessed-virgin-mary-mother-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-philip-neri-priest', 'Saint Philip Neri, Priest', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Philip Neri, Priest', NULL
FROM feasts f
WHERE f.slug = 'saint-philip-neri-priest'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-philip-neri-priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-philip-neri-priest'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-eighth-week-of-ordinary-time', 'Wednesday of the eighth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the eighth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-eighth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-eighth-week-of-ordinary-time', 'Thursday of the eighth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the eighth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-eighth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-eighth-week-of-ordinary-time', 'Friday of the eighth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the eighth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-eighth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-eighth-week-of-ordinary-time', 'Saturday of the eighth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the eighth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-eighth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-05-31 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-most-holy-trinity', 'The Most Holy Trinity', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Most Holy Trinity', NULL
FROM feasts f
WHERE f.slug = 'the-most-holy-trinity'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 5, 31,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-most-holy-trinity';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-most-holy-trinity'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-justin-martyr', 'Saint Justin, Martyr', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Justin, Martyr', NULL
FROM feasts f
WHERE f.slug = 'saint-justin-martyr'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-justin-martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-justin-martyr'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-ninth-week-of-ordinary-time', 'Tuesday of the ninth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the ninth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-ninth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saints-charles-lwanga-and-companions-martyrs', 'Saints Charles Lwanga and Companions, Martyrs', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saints Charles Lwanga and Companions, Martyrs', NULL
FROM feasts f
WHERE f.slug = 'saints-charles-lwanga-and-companions-martyrs'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saints-charles-lwanga-and-companions-martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saints-charles-lwanga-and-companions-martyrs'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-most-holy-body-and-blood-of-christ', 'The Most Holy Body and Blood of Christ', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Most Holy Body and Blood of Christ', NULL
FROM feasts f
WHERE f.slug = 'the-most-holy-body-and-blood-of-christ'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-most-holy-body-and-blood-of-christ';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-most-holy-body-and-blood-of-christ'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-boniface-bishop-and-martyr', 'Saint Boniface, Bishop and Martyr', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Boniface, Bishop and Martyr', NULL
FROM feasts f
WHERE f.slug = 'saint-boniface-bishop-and-martyr'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-boniface-bishop-and-martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-boniface-bishop-and-martyr'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-ninth-week-of-ordinary-time', 'Saturday of the ninth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the ninth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-ninth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tenth-sunday-in-ordinary-time', 'Tenth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tenth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tenth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-tenth-week-of-ordinary-time', 'Monday of the tenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the tenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-tenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-tenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-tenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-tenth-week-of-ordinary-time', 'Tuesday of the tenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the tenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-tenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-tenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-tenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-tenth-week-of-ordinary-time', 'Wednesday of the tenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the tenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-tenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-tenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-tenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-barnabas-apostle', 'Saint Barnabas, Apostle', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Barnabas, Apostle', NULL
FROM feasts f
WHERE f.slug = 'saint-barnabas-apostle'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-barnabas-apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-barnabas-apostle'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-most-sacred-heart-of-jesus', 'The Most Sacred Heart of Jesus', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Most Sacred Heart of Jesus', NULL
FROM feasts f
WHERE f.slug = 'the-most-sacred-heart-of-jesus'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-most-sacred-heart-of-jesus';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-most-sacred-heart-of-jesus'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-immaculate-heart-of-the-blessed-virgin-mary', 'The Immaculate Heart of the Blessed Virgin Mary', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Immaculate Heart of the Blessed Virgin Mary', NULL
FROM feasts f
WHERE f.slug = 'the-immaculate-heart-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-immaculate-heart-of-the-blessed-virgin-mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-immaculate-heart-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('eleventh-sunday-in-ordinary-time', 'Eleventh Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Eleventh Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'eleventh-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'eleventh-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'eleventh-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-eleventh-week-of-ordinary-time', 'Monday of the eleventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the eleventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-eleventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-eleventh-week-of-ordinary-time', 'Tuesday of the eleventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the eleventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-eleventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-eleventh-week-of-ordinary-time', 'Wednesday of the eleventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the eleventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-eleventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-eleventh-week-of-ordinary-time', 'Thursday of the eleventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the eleventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-eleventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-eleventh-week-of-ordinary-time', 'Friday of the eleventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the eleventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-eleventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-eleventh-week-of-ordinary-time', 'Saturday of the eleventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the eleventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-eleventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-eleventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twelfth-sunday-in-ordinary-time', 'Twelfth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twelfth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twelfth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twelfth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twelfth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-twelfth-week-of-ordinary-time', 'Monday of the twelfth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the twelfth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-twelfth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-twelfth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-twelfth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-twelfth-week-of-ordinary-time', 'Tuesday of the twelfth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the twelfth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-twelfth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-twelfth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-twelfth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-nativity-of-saint-john-the-baptist', 'The Nativity of Saint John the Baptist', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Nativity of Saint John the Baptist', NULL
FROM feasts f
WHERE f.slug = 'the-nativity-of-saint-john-the-baptist'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-nativity-of-saint-john-the-baptist';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-nativity-of-saint-john-the-baptist'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-twelfth-week-of-ordinary-time', 'Thursday of the twelfth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the twelfth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-twelfth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-twelfth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-twelfth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-twelfth-week-of-ordinary-time', 'Friday of the twelfth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the twelfth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-twelfth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-twelfth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-twelfth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-twelfth-week-of-ordinary-time', 'Saturday of the twelfth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the twelfth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-twelfth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-twelfth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-twelfth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thirteenth-sunday-in-ordinary-time', 'Thirteenth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thirteenth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thirteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thirteenth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thirteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saints-peter-and-paul-apostles', 'Saints Peter and Paul, Apostles', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saints Peter and Paul, Apostles', NULL
FROM feasts f
WHERE f.slug = 'saints-peter-and-paul-apostles'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saints-peter-and-paul-apostles';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saints-peter-and-paul-apostles'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-06-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-thirteenth-week-of-ordinary-time', 'Tuesday of the thirteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the thirteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-thirteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 6, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-thirteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-thirteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-thirteenth-week-of-ordinary-time', 'Wednesday of the thirteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the thirteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-thirteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-thirteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-thirteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-thirteenth-week-of-ordinary-time', 'Thursday of the thirteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the thirteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-thirteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-thirteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-thirteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-thomas-apostle', 'Saint Thomas, Apostle', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Thomas, Apostle', NULL
FROM feasts f
WHERE f.slug = 'saint-thomas-apostle'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-thomas-apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-thomas-apostle'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-thirteenth-week-of-ordinary-time', 'Saturday of the thirteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the thirteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-thirteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-thirteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-thirteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fourteenth-sunday-in-ordinary-time', 'Fourteenth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fourteenth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'fourteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fourteenth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'fourteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-fourteenth-week-of-ordinary-time', 'Monday of the fourteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the fourteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-fourteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-fourteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-fourteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-fourteenth-week-of-ordinary-time', 'Tuesday of the fourteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the fourteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-fourteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-fourteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-fourteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-fourteenth-week-of-ordinary-time', 'Wednesday of the fourteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the fourteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-fourteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-fourteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-fourteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-fourteenth-week-of-ordinary-time', 'Thursday of the fourteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the fourteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-fourteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-fourteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-fourteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-fourteenth-week-of-ordinary-time', 'Friday of the fourteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the fourteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-fourteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-fourteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-fourteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-benedict-abbot', 'Saint Benedict, Abbot', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Benedict, Abbot', NULL
FROM feasts f
WHERE f.slug = 'saint-benedict-abbot'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-benedict-abbot';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-benedict-abbot'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fifteenth-sunday-in-ordinary-time', 'Fifteenth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fifteenth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'fifteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fifteenth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'fifteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-fifteenth-week-of-ordinary-time', 'Monday of the fifteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the fifteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-fifteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-fifteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-fifteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-fifteenth-week-of-ordinary-time', 'Tuesday of the fifteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the fifteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-fifteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-fifteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-fifteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-bonaventure-bishop-and-doctor-of-the-church', 'Saint Bonaventure, Bishop and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Bonaventure, Bishop and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-bonaventure-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-bonaventure-bishop-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-bonaventure-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-fifteenth-week-of-ordinary-time', 'Thursday of the fifteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the fifteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-fifteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-fifteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-fifteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-fifteenth-week-of-ordinary-time', 'Friday of the fifteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the fifteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-fifteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-fifteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-fifteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-fifteenth-week-of-ordinary-time', 'Saturday of the fifteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the fifteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-fifteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-fifteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-fifteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('sixteenth-sunday-in-ordinary-time', 'Sixteenth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Sixteenth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'sixteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'sixteenth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'sixteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-sixteenth-week-of-ordinary-time', 'Monday of the sixteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the sixteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-sixteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-sixteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-sixteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-sixteenth-week-of-ordinary-time', 'Tuesday of the sixteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the sixteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-sixteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-sixteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-sixteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-mary-magdalene', 'Saint Mary Magdalene', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Mary Magdalene', NULL
FROM feasts f
WHERE f.slug = 'saint-mary-magdalene'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-mary-magdalene';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-mary-magdalene'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-sixteenth-week-of-ordinary-time', 'Thursday of the sixteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the sixteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-sixteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-sixteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-sixteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-sixteenth-week-of-ordinary-time', 'Friday of the sixteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the sixteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-sixteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-sixteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-sixteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-james-apostle', 'Saint James, Apostle', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint James, Apostle', NULL
FROM feasts f
WHERE f.slug = 'saint-james-apostle'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-james-apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-james-apostle'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('seventeenth-sunday-in-ordinary-time', 'Seventeenth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Seventeenth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'seventeenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'seventeenth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'seventeenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-seventeenth-week-of-ordinary-time', 'Monday of the seventeenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the seventeenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-seventeenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-seventeenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-seventeenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-seventeenth-week-of-ordinary-time', 'Tuesday of the seventeenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the seventeenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-seventeenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-seventeenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-seventeenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saints-martha-mary-and-lazarus', 'Saints Martha, Mary and Lazarus', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saints Martha, Mary and Lazarus', NULL
FROM feasts f
WHERE f.slug = 'saints-martha-mary-and-lazarus'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saints-martha-mary-and-lazarus';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saints-martha-mary-and-lazarus'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-seventeenth-week-of-ordinary-time', 'Thursday of the seventeenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the seventeenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-seventeenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-seventeenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-seventeenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-07-31 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-ignatius-of-loyola-priest', 'Saint Ignatius of Loyola, Priest', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Ignatius of Loyola, Priest', NULL
FROM feasts f
WHERE f.slug = 'saint-ignatius-of-loyola-priest'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 7, 31,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-ignatius-of-loyola-priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-ignatius-of-loyola-priest'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-alphonsus-mary-liguori-bishop-and-doctor-of-the-church', 'Saint Alphonsus Mary Liguori, Bishop and Doctor of the Church', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Alphonsus Mary Liguori, Bishop and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-alphonsus-mary-liguori-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-alphonsus-mary-liguori-bishop-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-alphonsus-mary-liguori-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('eighteenth-sunday-in-ordinary-time', 'Eighteenth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Eighteenth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'eighteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'eighteenth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'eighteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-eighteenth-week-of-ordinary-time', 'Monday of the eighteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the eighteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-eighteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-eighteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-eighteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-john-mary-vianney-priest', 'Saint John Mary Vianney, Priest', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint John Mary Vianney, Priest', NULL
FROM feasts f
WHERE f.slug = 'saint-john-mary-vianney-priest'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-john-mary-vianney-priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-john-mary-vianney-priest'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-eighteenth-week-of-ordinary-time', 'Wednesday of the eighteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the eighteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-eighteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-eighteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-eighteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-transfiguration-of-the-lord', 'The Transfiguration of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Transfiguration of the Lord', NULL
FROM feasts f
WHERE f.slug = 'the-transfiguration-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_LORD_FEAST_5:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-transfiguration-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_LORD_FEAST_5:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-transfiguration-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-eighteenth-week-of-ordinary-time', 'Friday of the eighteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the eighteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-eighteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-eighteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-eighteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-dominic-priest', 'Saint Dominic, Priest', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Dominic, Priest', NULL
FROM feasts f
WHERE f.slug = 'saint-dominic-priest'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-dominic-priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-dominic-priest'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('nineteenth-sunday-in-ordinary-time', 'Nineteenth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Nineteenth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'nineteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'nineteenth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'nineteenth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-lawrence-deacon-and-martyr', 'Saint Lawrence, Deacon and Martyr', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Lawrence, Deacon and Martyr', NULL
FROM feasts f
WHERE f.slug = 'saint-lawrence-deacon-and-martyr'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-lawrence-deacon-and-martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-lawrence-deacon-and-martyr'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-clare-virgin', 'Saint Clare, Virgin', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Clare, Virgin', NULL
FROM feasts f
WHERE f.slug = 'saint-clare-virgin'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-clare-virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-clare-virgin'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-nineteenth-week-of-ordinary-time', 'Wednesday of the nineteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the nineteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-nineteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-nineteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-nineteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-nineteenth-week-of-ordinary-time', 'Thursday of the nineteenth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the nineteenth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-nineteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-nineteenth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-nineteenth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-maximilian-mary-kolbe-priest-and-martyr', 'Saint Maximilian Mary Kolbe, Priest and Martyr', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Maximilian Mary Kolbe, Priest and Martyr', NULL
FROM feasts f
WHERE f.slug = 'saint-maximilian-mary-kolbe-priest-and-martyr'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-maximilian-mary-kolbe-priest-and-martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-maximilian-mary-kolbe-priest-and-martyr'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-assumption-of-the-blessed-virgin-mary', 'The Assumption of the Blessed Virgin Mary', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Assumption of the Blessed Virgin Mary', NULL
FROM feasts f
WHERE f.slug = 'the-assumption-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-assumption-of-the-blessed-virgin-mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-assumption-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twentieth-sunday-in-ordinary-time', 'Twentieth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twentieth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twentieth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twentieth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twentieth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-twentieth-week-of-ordinary-time', 'Monday of the twentieth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the twentieth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-twentieth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-twentieth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-twentieth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-twentieth-week-of-ordinary-time', 'Tuesday of the twentieth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the twentieth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-twentieth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-twentieth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-twentieth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-twentieth-week-of-ordinary-time', 'Wednesday of the twentieth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the twentieth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-twentieth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-twentieth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-twentieth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-bernard-abbot-and-doctor-of-the-church', 'Saint Bernard, Abbot and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Bernard, Abbot and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-bernard-abbot-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-bernard-abbot-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-bernard-abbot-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-pius-x-pope', 'Saint Pius X, Pope', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Pius X, Pope', NULL
FROM feasts f
WHERE f.slug = 'saint-pius-x-pope'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-pius-x-pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-pius-x-pope'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-queenship-of-the-blessed-virgin-mary', 'The Queenship of the Blessed Virgin Mary', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Queenship of the Blessed Virgin Mary', NULL
FROM feasts f
WHERE f.slug = 'the-queenship-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-queenship-of-the-blessed-virgin-mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-queenship-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twenty-first-sunday-in-ordinary-time', 'Twenty-first Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twenty-first Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twenty-first-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twenty-first-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twenty-first-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-bartholomew-apostle', 'Saint Bartholomew, Apostle', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Bartholomew, Apostle', NULL
FROM feasts f
WHERE f.slug = 'saint-bartholomew-apostle'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-bartholomew-apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-bartholomew-apostle'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-twenty-first-week-of-ordinary-time', 'Tuesday of the twenty-first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the twenty-first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-twenty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-twenty-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-twenty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-twenty-first-week-of-ordinary-time', 'Wednesday of the twenty-first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the twenty-first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-twenty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-twenty-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-twenty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-monica', 'Saint Monica', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Monica', NULL
FROM feasts f
WHERE f.slug = 'saint-monica'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-monica';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-monica'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-augustine-bishop-and-doctor-of-the-church', 'Saint Augustine, Bishop and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Augustine, Bishop and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-augustine-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-augustine-bishop-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-augustine-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-passion-of-saint-john-the-baptist', 'The Passion of Saint John the Baptist', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Passion of Saint John the Baptist', NULL
FROM feasts f
WHERE f.slug = 'the-passion-of-saint-john-the-baptist'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-passion-of-saint-john-the-baptist';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'the-passion-of-saint-john-the-baptist'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twenty-second-sunday-in-ordinary-time', 'Twenty-second Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twenty-second Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twenty-second-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twenty-second-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twenty-second-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-08-31 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-twenty-second-week-of-ordinary-time', 'Monday of the twenty-second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the twenty-second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-twenty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 8, 31,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-twenty-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-twenty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-twenty-second-week-of-ordinary-time', 'Tuesday of the twenty-second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the twenty-second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-twenty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-twenty-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-twenty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-twenty-second-week-of-ordinary-time', 'Wednesday of the twenty-second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the twenty-second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-twenty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-twenty-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-twenty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Saint Gregory the Great, Pope and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Gregory the Great, Pope and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-gregory-the-great-pope-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-gregory-the-great-pope-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-gregory-the-great-pope-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-twenty-second-week-of-ordinary-time', 'Friday of the twenty-second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the twenty-second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-twenty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-twenty-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-twenty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-twenty-second-week-of-ordinary-time', 'Saturday of the twenty-second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the twenty-second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-twenty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-twenty-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-twenty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twenty-third-sunday-in-ordinary-time', 'Twenty-third Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twenty-third Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twenty-third-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twenty-third-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twenty-third-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-twenty-third-week-of-ordinary-time', 'Monday of the twenty-third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the twenty-third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-twenty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-twenty-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-twenty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-nativity-of-the-blessed-virgin-mary', 'The Nativity of the Blessed Virgin Mary', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Nativity of the Blessed Virgin Mary', NULL
FROM feasts f
WHERE f.slug = 'the-nativity-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-nativity-of-the-blessed-virgin-mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-nativity-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-twenty-third-week-of-ordinary-time', 'Wednesday of the twenty-third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the twenty-third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-twenty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-twenty-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-twenty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-twenty-third-week-of-ordinary-time', 'Thursday of the twenty-third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the twenty-third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-twenty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-twenty-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-twenty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-twenty-third-week-of-ordinary-time', 'Friday of the twenty-third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the twenty-third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-twenty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-twenty-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-twenty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-twenty-third-week-of-ordinary-time', 'Saturday of the twenty-third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the twenty-third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-twenty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-twenty-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-twenty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twenty-fourth-sunday-in-ordinary-time', 'Twenty-fourth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twenty-fourth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twenty-fourth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twenty-fourth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twenty-fourth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-exaltation-of-the-holy-cross', 'The Exaltation of the Holy Cross', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Exaltation of the Holy Cross', NULL
FROM feasts f
WHERE f.slug = 'the-exaltation-of-the-holy-cross'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_LORD_FEAST_5:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-exaltation-of-the-holy-cross';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_LORD_FEAST_5:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'the-exaltation-of-the-holy-cross'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('our-lady-of-sorrows', 'Our Lady of Sorrows', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Our Lady of Sorrows', NULL
FROM feasts f
WHERE f.slug = 'our-lady-of-sorrows'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'our-lady-of-sorrows';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'our-lady-of-sorrows'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Saints Cornelius, Pope, and Cyprian, Bishop, Martyrs', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saints Cornelius, Pope, and Cyprian, Bishop, Martyrs', NULL
FROM feasts f
WHERE f.slug = 'saints-cornelius-pope-and-cyprian-bishop-martyrs'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saints-cornelius-pope-and-cyprian-bishop-martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saints-cornelius-pope-and-cyprian-bishop-martyrs'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-twenty-fourth-week-of-ordinary-time', 'Thursday of the twenty-fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the twenty-fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-twenty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-twenty-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-twenty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-twenty-fourth-week-of-ordinary-time', 'Friday of the twenty-fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the twenty-fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-twenty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-twenty-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-twenty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-twenty-fourth-week-of-ordinary-time', 'Saturday of the twenty-fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the twenty-fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-twenty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-twenty-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-twenty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twenty-fifth-sunday-in-ordinary-time', 'Twenty-fifth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twenty-fifth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twenty-fifth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twenty-fifth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twenty-fifth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-matthew-apostle-and-evangelist', 'Saint Matthew, Apostle and Evangelist', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Matthew, Apostle and Evangelist', NULL
FROM feasts f
WHERE f.slug = 'saint-matthew-apostle-and-evangelist'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-matthew-apostle-and-evangelist';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-matthew-apostle-and-evangelist'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-twenty-fifth-week-of-ordinary-time', 'Tuesday of the twenty-fifth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the twenty-fifth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-twenty-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-twenty-fifth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-twenty-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-pius-of-pietrelcina-priest', 'Saint Pius of Pietrelcina, Priest', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Pius of Pietrelcina, Priest', NULL
FROM feasts f
WHERE f.slug = 'saint-pius-of-pietrelcina-priest'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-pius-of-pietrelcina-priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-pius-of-pietrelcina-priest'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-twenty-fifth-week-of-ordinary-time', 'Thursday of the twenty-fifth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the twenty-fifth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-twenty-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-twenty-fifth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-twenty-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-twenty-fifth-week-of-ordinary-time', 'Friday of the twenty-fifth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the twenty-fifth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-twenty-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-twenty-fifth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-twenty-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-twenty-fifth-week-of-ordinary-time', 'Saturday of the twenty-fifth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the twenty-fifth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-twenty-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-twenty-fifth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-twenty-fifth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twenty-sixth-sunday-in-ordinary-time', 'Twenty-sixth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twenty-sixth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twenty-sixth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twenty-sixth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twenty-sixth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-twenty-sixth-week-of-ordinary-time', 'Monday of the twenty-sixth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the twenty-sixth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-twenty-sixth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-twenty-sixth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-twenty-sixth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saints-michael-gabriel-and-raphael-archangels', 'Saints Michael, Gabriel and Raphael, Archangels', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saints Michael, Gabriel and Raphael, Archangels', NULL
FROM feasts f
WHERE f.slug = 'saints-michael-gabriel-and-raphael-archangels'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saints-michael-gabriel-and-raphael-archangels';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saints-michael-gabriel-and-raphael-archangels'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-09-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-jerome-priest-and-doctor-of-the-church', 'Saint Jerome, Priest and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Jerome, Priest and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-jerome-priest-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 9, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-jerome-priest-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-jerome-priest-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Saint Thérèse of the Child Jesus, Virgin and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Thérèse of the Child Jesus, Virgin and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-holy-guardian-angels', 'The Holy Guardian Angels', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Holy Guardian Angels', NULL
FROM feasts f
WHERE f.slug = 'the-holy-guardian-angels'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-holy-guardian-angels';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-holy-guardian-angels'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-twenty-sixth-week-of-ordinary-time', 'Saturday of the twenty-sixth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the twenty-sixth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-twenty-sixth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-twenty-sixth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-twenty-sixth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twenty-seventh-sunday-in-ordinary-time', 'Twenty-seventh Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twenty-seventh Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twenty-seventh-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twenty-seventh-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twenty-seventh-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-twenty-seventh-week-of-ordinary-time', 'Monday of the twenty-seventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the twenty-seventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-twenty-seventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-twenty-seventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-twenty-seventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-twenty-seventh-week-of-ordinary-time', 'Tuesday of the twenty-seventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the twenty-seventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-twenty-seventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-twenty-seventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-twenty-seventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('our-lady-of-the-rosary', 'Our Lady of the Rosary', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Our Lady of the Rosary', NULL
FROM feasts f
WHERE f.slug = 'our-lady-of-the-rosary'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'our-lady-of-the-rosary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'our-lady-of-the-rosary'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-twenty-seventh-week-of-ordinary-time', 'Thursday of the twenty-seventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the twenty-seventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-twenty-seventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-twenty-seventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-twenty-seventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-twenty-seventh-week-of-ordinary-time', 'Friday of the twenty-seventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the twenty-seventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-twenty-seventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-twenty-seventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-twenty-seventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-twenty-seventh-week-of-ordinary-time', 'Saturday of the twenty-seventh week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the twenty-seventh week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-twenty-seventh-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-twenty-seventh-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-twenty-seventh-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twenty-eighth-sunday-in-ordinary-time', 'Twenty-eighth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twenty-eighth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twenty-eighth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twenty-eighth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twenty-eighth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-twenty-eighth-week-of-ordinary-time', 'Monday of the twenty-eighth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the twenty-eighth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-twenty-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-twenty-eighth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-twenty-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-twenty-eighth-week-of-ordinary-time', 'Tuesday of the twenty-eighth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the twenty-eighth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-twenty-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-twenty-eighth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-twenty-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-twenty-eighth-week-of-ordinary-time', 'Wednesday of the twenty-eighth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the twenty-eighth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-twenty-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-twenty-eighth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-twenty-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Saint Teresa of Jesus, Virgin and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Teresa of Jesus, Virgin and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-teresa-of-jesus-virgin-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-teresa-of-jesus-virgin-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-teresa-of-jesus-virgin-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-twenty-eighth-week-of-ordinary-time', 'Friday of the twenty-eighth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the twenty-eighth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-twenty-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-twenty-eighth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-twenty-eighth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-ignatius-of-antioch-bishop-and-martyr', 'Saint Ignatius of Antioch, Bishop and Martyr', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Ignatius of Antioch, Bishop and Martyr', NULL
FROM feasts f
WHERE f.slug = 'saint-ignatius-of-antioch-bishop-and-martyr'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-ignatius-of-antioch-bishop-and-martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-ignatius-of-antioch-bishop-and-martyr'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('twenty-ninth-sunday-in-ordinary-time', 'Twenty-ninth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Twenty-ninth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'twenty-ninth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'twenty-ninth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'twenty-ninth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-twenty-ninth-week-of-ordinary-time', 'Monday of the twenty-ninth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the twenty-ninth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-twenty-ninth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-twenty-ninth-week-of-ordinary-time', 'Tuesday of the twenty-ninth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the twenty-ninth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-twenty-ninth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-twenty-ninth-week-of-ordinary-time', 'Wednesday of the twenty-ninth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the twenty-ninth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-twenty-ninth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-twenty-ninth-week-of-ordinary-time', 'Thursday of the twenty-ninth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the twenty-ninth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-twenty-ninth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-twenty-ninth-week-of-ordinary-time', 'Friday of the twenty-ninth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the twenty-ninth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-twenty-ninth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-twenty-ninth-week-of-ordinary-time', 'Saturday of the twenty-ninth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the twenty-ninth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-twenty-ninth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-twenty-ninth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thirtieth-sunday-in-ordinary-time', 'Thirtieth Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thirtieth Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thirtieth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thirtieth-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thirtieth-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-thirtieth-week-of-ordinary-time', 'Monday of the thirtieth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the thirtieth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-thirtieth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-thirtieth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-thirtieth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-thirtieth-week-of-ordinary-time', 'Tuesday of the thirtieth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the thirtieth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-thirtieth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-thirtieth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-thirtieth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saints-simon-and-jude-apostles', 'Saints Simon and Jude, Apostles', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saints Simon and Jude, Apostles', NULL
FROM feasts f
WHERE f.slug = 'saints-simon-and-jude-apostles'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saints-simon-and-jude-apostles';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saints-simon-and-jude-apostles'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-thirtieth-week-of-ordinary-time', 'Thursday of the thirtieth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the thirtieth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-thirtieth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-thirtieth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-thirtieth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-thirtieth-week-of-ordinary-time', 'Friday of the thirtieth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the thirtieth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-thirtieth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-thirtieth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-thirtieth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-10-31 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-thirtieth-week-of-ordinary-time', 'Saturday of the thirtieth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the thirtieth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-thirtieth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 10, 31,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-thirtieth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-thirtieth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('all-saints', 'All Saints', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'All Saints', NULL
FROM feasts f
WHERE f.slug = 'all-saints'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'all-saints';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'all-saints'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-commemoration-of-all-the-faithful-departed-all-soul-s-day', 'The Commemoration of All the Faithful Departed (All Soul’s Day)', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Commemoration of All the Faithful Departed (All Soul’s Day)', NULL
FROM feasts f
WHERE f.slug = 'the-commemoration-of-all-the-faithful-departed-all-soul-s-day'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-commemoration-of-all-the-faithful-departed-all-soul-s-day';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'the-commemoration-of-all-the-faithful-departed-all-soul-s-day'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-thirty-first-week-of-ordinary-time', 'Tuesday of the thirty-first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the thirty-first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-thirty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-thirty-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'tuesday-of-the-thirty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-charles-borromeo-bishop', 'Saint Charles Borromeo, Bishop', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Charles Borromeo, Bishop', NULL
FROM feasts f
WHERE f.slug = 'saint-charles-borromeo-bishop'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-charles-borromeo-bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-charles-borromeo-bishop'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-thirty-first-week-of-ordinary-time', 'Thursday of the thirty-first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the thirty-first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-thirty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-thirty-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-thirty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-thirty-first-week-of-ordinary-time', 'Friday of the thirty-first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the thirty-first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-thirty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-thirty-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-thirty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-thirty-first-week-of-ordinary-time', 'Saturday of the thirty-first week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the thirty-first week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-thirty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-thirty-first-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-thirty-first-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thirty-second-sunday-in-ordinary-time', 'Thirty-second Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thirty-second Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thirty-second-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thirty-second-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thirty-second-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-dedication-of-the-lateran-basilica', 'The Dedication of the Lateran Basilica', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Dedication of the Lateran Basilica', NULL
FROM feasts f
WHERE f.slug = 'the-dedication-of-the-lateran-basilica'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_LORD_FEAST_5:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-dedication-of-the-lateran-basilica';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_LORD_FEAST_5:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-dedication-of-the-lateran-basilica'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-leo-the-great-pope-and-doctor-of-the-church', 'Saint Leo the Great, Pope and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Leo the Great, Pope and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-leo-the-great-pope-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-leo-the-great-pope-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-leo-the-great-pope-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-martin-of-tours-bishop', 'Saint Martin of Tours, Bishop', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Martin of Tours, Bishop', NULL
FROM feasts f
WHERE f.slug = 'saint-martin-of-tours-bishop'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-martin-of-tours-bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-martin-of-tours-bishop'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-josaphat-bishop-and-martyr', 'Saint Josaphat, Bishop and Martyr', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Josaphat, Bishop and Martyr', NULL
FROM feasts f
WHERE f.slug = 'saint-josaphat-bishop-and-martyr'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-josaphat-bishop-and-martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-josaphat-bishop-and-martyr'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-thirty-second-week-of-ordinary-time', 'Friday of the thirty-second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the thirty-second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-thirty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-thirty-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-thirty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-thirty-second-week-of-ordinary-time', 'Saturday of the thirty-second week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the thirty-second week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-thirty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-thirty-second-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-thirty-second-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thirty-third-sunday-in-ordinary-time', 'Thirty-third Sunday in Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thirty-third Sunday in Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thirty-third-sunday-in-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thirty-third-sunday-in-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:UNPRIVILEGED_SUNDAY_6:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thirty-third-sunday-in-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-thirty-third-week-of-ordinary-time', 'Monday of the thirty-third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the thirty-third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-thirty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-thirty-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-thirty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-elizabeth-of-hungary-religious', 'Saint Elizabeth of Hungary, Religious', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Elizabeth of Hungary, Religious', NULL
FROM feasts f
WHERE f.slug = 'saint-elizabeth-of-hungary-religious'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-elizabeth-of-hungary-religious';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-elizabeth-of-hungary-religious'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-thirty-third-week-of-ordinary-time', 'Wednesday of the thirty-third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the thirty-third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-thirty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-thirty-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-thirty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-thirty-third-week-of-ordinary-time', 'Thursday of the thirty-third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the thirty-third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-thirty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-thirty-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-thirty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-thirty-third-week-of-ordinary-time', 'Friday of the thirty-third week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the thirty-third week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-thirty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-thirty-third-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-thirty-third-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-presentation-of-the-blessed-virgin-mary', 'The Presentation of the Blessed Virgin Mary', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Presentation of the Blessed Virgin Mary', NULL
FROM feasts f
WHERE f.slug = 'the-presentation-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-presentation-of-the-blessed-virgin-mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-presentation-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('our-lord-jesus-christ-king-of-the-universe', 'Our Lord Jesus Christ, King of the Universe', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Our Lord Jesus Christ, King of the Universe', NULL
FROM feasts f
WHERE f.slug = 'our-lord-jesus-christ-king-of-the-universe'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'our-lord-jesus-christ-king-of-the-universe';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'our-lord-jesus-christ-king-of-the-universe'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monday-of-the-thirty-fourth-week-of-ordinary-time', 'Monday of the thirty-fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monday of the thirty-fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'monday-of-the-thirty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monday-of-the-thirty-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'monday-of-the-thirty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-andrew-dung-lac-priest-and-companions-martyrs', 'Saint Andrew Dũng-Lạc, Priest, and Companions, Martyrs', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Andrew Dũng-Lạc, Priest, and Companions, Martyrs', NULL
FROM feasts f
WHERE f.slug = 'saint-andrew-dung-lac-priest-and-companions-martyrs'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-andrew-dung-lac-priest-and-companions-martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-andrew-dung-lac-priest-and-companions-martyrs'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-thirty-fourth-week-of-ordinary-time', 'Wednesday of the thirty-fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the thirty-fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-thirty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-thirty-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'wednesday-of-the-thirty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-thirty-fourth-week-of-ordinary-time', 'Thursday of the thirty-fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the thirty-fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-thirty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-thirty-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'thursday-of-the-thirty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-thirty-fourth-week-of-ordinary-time', 'Friday of the thirty-fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the thirty-fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-thirty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-thirty-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'friday-of-the-thirty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-thirty-fourth-week-of-ordinary-time', 'Saturday of the thirty-fourth week of Ordinary Time', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the thirty-fourth week of Ordinary Time', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-thirty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-thirty-fourth-week-of-ordinary-time';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'GREEN'
WHERE f.slug = 'saturday-of-the-thirty-fourth-week-of-ordinary-time'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('first-sunday-of-advent', 'First Sunday of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'First Sunday of Advent', NULL
FROM feasts f
WHERE f.slug = 'first-sunday-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'first-sunday-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'first-sunday-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-11-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-andrew-apostle', 'Saint Andrew, Apostle', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Andrew, Apostle', NULL
FROM feasts f
WHERE f.slug = 'saint-andrew-apostle'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 11, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-andrew-apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-andrew-apostle'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-01 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-first-week-of-advent', 'Tuesday of the first week of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the first week of Advent', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-first-week-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 1,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-first-week-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'tuesday-of-the-first-week-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-02 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-first-week-of-advent', 'Wednesday of the first week of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the first week of Advent', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-first-week-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 2,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-first-week-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'wednesday-of-the-first-week-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-03 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-francis-xavier-priest', 'Saint Francis Xavier, Priest', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Francis Xavier, Priest', NULL
FROM feasts f
WHERE f.slug = 'saint-francis-xavier-priest'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 3,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-francis-xavier-priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-francis-xavier-priest'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-04 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-first-week-of-advent', 'Friday of the first week of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the first week of Advent', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-first-week-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 4,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-first-week-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'friday-of-the-first-week-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-05 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-first-week-of-advent', 'Saturday of the first week of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the first week of Advent', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-first-week-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 5,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-first-week-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'saturday-of-the-first-week-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-06 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('second-sunday-of-advent', 'Second Sunday of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Second Sunday of Advent', NULL
FROM feasts f
WHERE f.slug = 'second-sunday-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 6,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'second-sunday-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'second-sunday-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-07 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-ambrose-bishop-and-doctor-of-the-church', 'Saint Ambrose, Bishop and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Ambrose, Bishop and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-ambrose-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 7,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-ambrose-bishop-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-ambrose-bishop-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-08 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-immaculate-conception-of-the-blessed-virgin-mary', 'The Immaculate Conception of the Blessed Virgin Mary', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Immaculate Conception of the Blessed Virgin Mary', NULL
FROM feasts f
WHERE f.slug = 'the-immaculate-conception-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 8,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-immaculate-conception-of-the-blessed-virgin-mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_SOLEMNITY_3:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-immaculate-conception-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-09 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-second-week-of-advent', 'Wednesday of the second week of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the second week of Advent', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-second-week-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 9,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-second-week-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'wednesday-of-the-second-week-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-10 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thursday-of-the-second-week-of-advent', 'Thursday of the second week of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thursday of the second week of Advent', NULL
FROM feasts f
WHERE f.slug = 'thursday-of-the-second-week-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 10,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thursday-of-the-second-week-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'thursday-of-the-second-week-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-11 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('friday-of-the-second-week-of-advent', 'Friday of the second week of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Friday of the second week of Advent', NULL
FROM feasts f
WHERE f.slug = 'friday-of-the-second-week-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 11,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'friday-of-the-second-week-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'friday-of-the-second-week-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-12 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saturday-of-the-second-week-of-advent', 'Saturday of the second week of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saturday of the second week of Advent', NULL
FROM feasts f
WHERE f.slug = 'saturday-of-the-second-week-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 12,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saturday-of-the-second-week-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'saturday-of-the-second-week-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-13 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('third-sunday-of-advent', 'Third Sunday of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Third Sunday of Advent', NULL
FROM feasts f
WHERE f.slug = 'third-sunday-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 13,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'third-sunday-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'ROSE'
WHERE f.slug = 'third-sunday-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-14 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Saint John of the Cross, Priest and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint John of the Cross, Priest and Doctor of the Church', NULL
FROM feasts f
WHERE f.slug = 'saint-john-of-the-cross-priest-and-doctor-of-the-church'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 14,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-john-of-the-cross-priest-and-doctor-of-the-church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_MEMORIAL_10:MEMORIAL'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'saint-john-of-the-cross-priest-and-doctor-of-the-church'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-15 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('tuesday-of-the-third-week-of-advent', 'Tuesday of the third week of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Tuesday of the third week of Advent', NULL
FROM feasts f
WHERE f.slug = 'tuesday-of-the-third-week-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 15,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'tuesday-of-the-third-week-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'tuesday-of-the-third-week-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-16 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wednesday-of-the-third-week-of-advent', 'Wednesday of the third week of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wednesday of the third week of Advent', NULL
FROM feasts f
WHERE f.slug = 'wednesday-of-the-third-week-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 16,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wednesday-of-the-third-week-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:WEEKDAY_13:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'wednesday-of-the-third-week-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-17 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('december-17', 'December 17', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'December 17', NULL
FROM feasts f
WHERE f.slug = 'december-17'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 17,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'december-17';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'december-17'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-18 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('december-18', 'December 18', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'December 18', NULL
FROM feasts f
WHERE f.slug = 'december-18'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 18,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'december-18';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'december-18'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-19 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('december-19', 'December 19', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'December 19', NULL
FROM feasts f
WHERE f.slug = 'december-19'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 19,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'december-19';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'december-19'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-20 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fourth-sunday-of-advent', 'Fourth Sunday of Advent', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fourth Sunday of Advent', NULL
FROM feasts f
WHERE f.slug = 'fourth-sunday-of-advent'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 20,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fourth-sunday-of-advent';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_SUNDAY_2:SUNDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'fourth-sunday-of-advent'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-21 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('december-21', 'December 21', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'December 21', NULL
FROM feasts f
WHERE f.slug = 'december-21'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 21,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'december-21';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'december-21'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-22 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('december-22', 'December 22', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'December 22', NULL
FROM feasts f
WHERE f.slug = 'december-22'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 22,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'december-22';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'december-22'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-23 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('december-23', 'December 23', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'December 23', NULL
FROM feasts f
WHERE f.slug = 'december-23'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 23,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'december-23';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'december-23'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-24 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('december-24', 'December 24', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'December 24', NULL
FROM feasts f
WHERE f.slug = 'december-24'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 24,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'december-24';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'PURPLE'
WHERE f.slug = 'december-24'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-25 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-nativity-of-the-lord-christmas', 'The Nativity of the Lord (Christmas)', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Nativity of the Lord (Christmas)', NULL
FROM feasts f
WHERE f.slug = 'the-nativity-of-the-lord-christmas'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 25,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-nativity-of-the-lord-christmas';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PROPER_OF_TIME_SOLEMNITY_2:SOLEMNITY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-nativity-of-the-lord-christmas'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-26 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('saint-stephen-the-first-martyr', 'Saint Stephen, the First Martyr', 'saint')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Saint Stephen, the First Martyr', NULL
FROM feasts f
WHERE f.slug = 'saint-stephen-the-first-martyr'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 26,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'saint-stephen-the-first-martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'saint-stephen-the-first-martyr'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-27 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-holy-family-of-jesus-mary-and-joseph', 'The Holy Family of Jesus, Mary and Joseph', 'marian')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Holy Family of Jesus, Mary and Joseph', NULL
FROM feasts f
WHERE f.slug = 'the-holy-family-of-jesus-mary-and-joseph'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 27,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_LORD_FEAST_5:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-holy-family-of-jesus-mary-and-joseph';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_LORD_FEAST_5:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'the-holy-family-of-jesus-mary-and-joseph'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-28 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('the-holy-innocents-martyrs', 'The Holy Innocents, Martyrs', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'The Holy Innocents, Martyrs', NULL
FROM feasts f
WHERE f.slug = 'the-holy-innocents-martyrs'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 28,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'the-holy-innocents-martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:GENERAL_FEAST_7:FEAST'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors clr ON clr.code = 'RED'
WHERE f.slug = 'the-holy-innocents-martyrs'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-29 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fifth-day-within-the-octave-of-the-nativity-of-the-lord', 'Fifth Day within the Octave of the Nativity of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fifth Day within the Octave of the Nativity of the Lord', NULL
FROM feasts f
WHERE f.slug = 'fifth-day-within-the-octave-of-the-nativity-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 29,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fifth-day-within-the-octave-of-the-nativity-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'fifth-day-within-the-octave-of-the-nativity-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-30 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('sixth-day-within-the-octave-of-the-nativity-of-the-lord', 'Sixth Day within the Octave of the Nativity of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Sixth Day within the Octave of the Nativity of the Lord', NULL
FROM feasts f
WHERE f.slug = 'sixth-day-within-the-octave-of-the-nativity-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 30,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'sixth-day-within-the-octave-of-the-nativity-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'sixth-day-within-the-octave-of-the-nativity-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

-- 2026-12-31 :: undefined
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('seventh-day-within-the-octave-of-the-nativity-of-the-lord', 'Seventh Day within the Octave of the Nativity of the Lord', 'other')
ON CONFLICT (slug) DO UPDATE
SET default_name = EXCLUDED.default_name,
    feast_type = EXCLUDED.feast_type;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Seventh Day within the Octave of the Nativity of the Lord', NULL
FROM feasts f
WHERE f.slug = 'seventh-day-within-the-octave-of-the-nativity-of-the-lord'
ON CONFLICT (feast_id, locale_code) DO UPDATE
SET name = EXCLUDED.name;
INSERT INTO feast_dates (
    feast_id, calendar_id, date_kind, month, day,
    movable_base, movable_offset_days,
    valid_from, valid_to, notes
)
SELECT
    f.id, c.id, 'fixed', 12, 31,
    NULL, NULL,
    '2026-01-01', '2026-12-31',
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'seventh-day-within-the-octave-of-the-nativity-of-the-lord';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT
    f.id,
    c.id,
    r.id,
    clr.id,
    FALSE,
    'romcal:2026:undefined:PRIVILEGED_WEEKDAY_9:WEEKDAY'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors clr ON clr.code = 'WHITE'
WHERE f.slug = 'seventh-day-within-the-octave-of-the-nativity-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO UPDATE
SET rank_id = EXCLUDED.rank_id,
    color_id = EXCLUDED.color_id,
    is_optional = EXCLUDED.is_optional,
    notes = EXCLUDED.notes;

COMMIT;
