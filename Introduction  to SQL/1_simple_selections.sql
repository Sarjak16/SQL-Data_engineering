-- Exercise1:
-- .............


-- 1.SELECT the country column FROM the eurovision table.
SELECT country
FROM eurovision;

-- 2
-- Amend your query to return the points column instead of the country column.
-- Select the points column
SELECT 
  points 
FROM 
  eurovision;
-- 3
-- Use TOP to change the existing query so that only the first 50 rows are returned.
-- Limit the number of rows returned
SELECT 
  TOP (50) points 
FROM 
  eurovision;
-- 4
-- Return a list of unique countries using DISTINCT. Give the results an alias of unique_country.
-- Return unique countries and use an alias
SELECT 
  DISTINCT country AS unique_country 
FROM 
  eurovision;

--Exercise-2
--...........

-- 1.
-- SELECT the country and event_year columns from the eurovision table.

-- Select country and event_year from eurovision

SELECT 
  country, 
  event_year 
FROM 
  eurovision;

-- 2.
-- Use a shortcut to amend the current query, returning ALL columns in the table.

-- Amend the code to select all columns
SELECT 
 *
FROM 
  eurovision;

-- 3.
-- This time, return only half the rows using 'TOP', using the same shortcut as before to return all columns.

-- Return all columns, restricting the percent of rows returned
SELECT 
  TOP (50) PERCENT * 
FROM 
  eurovision;


  