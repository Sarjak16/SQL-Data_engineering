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


-------------------------------JOining multiple tables-----------------------------------------------
-- Perform an inner join of countries AS c (left) with populations AS p (right), on code.
-- Select name, year and fertility_rate.
-- Select relevant fields
SELECT name, year, fertility_rate
-- Inner join countries and populations, aliased, on code
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code;



-- Chain another inner join to your query with the economies table AS e, using code.
-- Select name, and using table aliases, select year and unemployment_rate from the economies table.

SELECT name, e.year, unemployment_rate, fertility_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
-- Join to economies (as e)
INNER JOIN economies AS e
-- Match on country code
ON c.code = e.code;













--where clause----------------------
-- 1
-- Select the nerc_region and demand_loss_mw columns, limiting the results to those where affected_customers is greater than or equal to 500000 (500,000)

-- Select nerc_region and demand_loss_mw
SELECT 
  nerc_region, 
  demand_loss_mw 
FROM 
  grid 
-- Retrieve rows where affected_customers is >= 500000  (500,000)
WHERE 
 affected_customers >= 500000 ;

-- 2
-- Select the description and affected_customers columns, returning records where the event_date was the 22nd December, 2013.
-- Select description and affected customers
SELECT 
  description, 
  affected_customers 
FROM 
  grid 
  -- Retrieve rows where the event_date was the 22nd December, 2013    
WHERE 
  event_date = '2013-12-22';

-- 3
-- Limit the results to those where the affected_customers is BETWEEN 50000 and 150000, and order in descending order of event_date.
-- Select description, affected_customers and event date
SELECT 
  description, 
  affected_customers,
  event_date
FROM 
  grid 
  -- The affected_customers column should be >= 50000 and <=150000   
WHERE 
  affected_customers BETWEEN 50000
  AND 150000 
   -- Define the order   
ORDER BY 
  event_date DESC;
--------------------------------------------------------------------------------------------

-- Modify your query so that you are joining to economies on year as well as code.
SELECT name, e.year, fertility_rate, unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
INNER JOIN economies AS e
ON c.code = e.code
-- Add an additional joining condition such that you are also joining on year
AND  e.year = p.year;



-- 1.....................................................................................
-- Complete the LEFT JOIN with the countries table on the left and the economies table on the right on the code field.
-- Filter the records from the year 2010.
SELECT name, region, gdp_percapita
FROM countries AS c
LEFT JOIN economies AS e
-- Match on code fields
USING(code) 
-- Filter for the year 2010
WHERE year=2010;

-- 2........................................................................
-- To calculate per capita GDP per region, begin by grouping by region.
-- After your GROUP BY, choose region in your SELECT statement, followed by average GDP per capita using the AVG() function, with AS avg_gdp as your alias.

-- Select region, and average gdp_percapita as avg_gdp
SELECT region, AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
-- Group by region
GROUP BY region;


-- 3................................................................
-- Order the result set by the average GDP per capita from highest to lowest.
-- Return only the first 10 records in your result.


SELECT region, AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
GROUP BY region
-- Order by descending avg_gdp
ORDER BY avg_gdp DESC
-- Return only first 10 records
LIMIT 10;



--------------------------------------------------------------------------------------------------
-- Modify this query to use RIGHT JOIN instead of LEFT JOIN
    --SELECT countries.name AS country, languages.name AS language, percent
    -- FROM countries
    -- LEFT JOIN languages
    -- USING(code)
    -- ORDER BY language;

SELECT countries.name AS country, languages.name AS language, percent
FROM languages
RIGHT JOIN countries
USING(code)
ORDER BY language;

