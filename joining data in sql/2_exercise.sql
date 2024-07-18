--1.
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

