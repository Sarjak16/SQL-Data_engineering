--1.1.
-- Start with the join statement in line 6; perform an inner join with the countries table as c on the left with the languages table as l on the right.
-- Make use of the USING keyword to join on code in line 8.
-- Lastly, in line 2, select the country name, aliased as country, and the language name, aliased as language.
--=>
-- Select country and language names, aliased
SELECT c.name AS country, l.name AS language
-- From countries (aliased)
FROM countries AS c

-- Join to languages (aliased)
INNER JOIN languages AS l
-- Use code as the joining field with the USING keyword
USING (code);

--1.2:
-- Rearrange the SELECT statement so that the language column appears on the left and the country column on the right.
-- Sort the results by language.
-- Rearrange SELECT statement, keeping aliases
SELECT c.name AS country, l.name AS language
FROM languages AS l

INNER JOIN countries AS c
USING(code)
-- Order the results by language
ORDER BY language;

--1.3:
-- Select the incorrect answer from the following options.

-- The query you generated in step 1 is provided below. Run this query (or the amendment you made in step 2) in the console to find the answer to the question.

-- SELECT c.name AS country, l.name AS language
-- FROM countries AS c
-- INNER JOIN languages AS l
-- USING(code)
-- ORDER BY country;

