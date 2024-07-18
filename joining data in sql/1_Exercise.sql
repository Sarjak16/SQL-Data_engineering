--1:
-- Select all columns from cities
SELECT * 
FROM cities;

--2:
-- Perform an inner join with the cities table on the left and the countries table on the right; do not alias tables here or in the next step.
-- Identify the relevant column names to join ON by inspecting the cities and countries tabs in the console.
--=>
SELECT * 
FROM cities
-- Inner join to countries
INNER JOIN countries
-- Match on country codes
ON cities.country_code= countries.code

-- 3:
-- Complete the SELECT statement to keep only the name of the city, the name of the country, and the region the country is located in (in the order specified).
-- Alias the name of the city AS city and the name of the country AS country.
-- =>
--Select name fields (with alias) and region 
-- Start with selecting the required fields and aliasing them
SELECT cities.name AS city, countries.name AS country, region
-- Make sure to join the cities and countries tables
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;



-- --4:
-- Start with your inner join in line 5; join the tables countries AS c (left) with economies (right), aliasing economies AS e.
-- Next, use code as your joining field in line 7; do not use the USING command here.
-- Lastly, select the following columns in order in line 2: code from the countries table (aliased as country_code), name, year, and inflation_rate.

--=>
-- Select fields with aliases
SELECT c.code AS country_code, name, year, inflation_rate
FROM countries AS c
-- Join to economies (alias e)
INNER JOIN economies AS e

-- Match on code field using table aliases
ON c.code = e.code;

-- 5:
-- Use the country code field to complete the INNER JOIN with USING; do not change any alias names.
-- =>
SELECT c.name AS country, l.name AS language, official
FROM countries AS c
INNER JOIN languages AS l
-- Match using the code column
USING (code)