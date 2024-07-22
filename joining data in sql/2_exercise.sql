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
-----------------------------------------------------------------------------------------------


