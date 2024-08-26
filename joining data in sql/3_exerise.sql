-- outer/ self/ cross joins

-- 1
-- Perform an inner join with cities AS c1 on the left and countries as c2 on the right.
-- Use code as the field to merge your tables on.

SELECT 
    c1.name AS city,
    code,
    c2.name AS country,
    region,
    city_proper_pop
FROM cities AS c1
-- Perform an inner join with cities as c1 and countries as c2 on country code
INNER JOIN countries AS c2
ON c1.country_code = c2.code

-- 2
-- Change the code to perform a LEFT JOIN instead of an INNER JOIN.
-- After executing this query, have a look at how many records the query result contains.
SELECT 
	c1.name AS city, 
    code, 
    c2.name AS country,
    region, 
    city_proper_pop
FROM cities AS c1
-- Join right table (with alias)
LEFT JOIN countries AS c2
ON c1.country_code = c2.code
ORDER BY code DESC;



-- FULL JOIN
-- 1.
-- Perform a full join with countries (left) and currencies (right).
-- Filter for the North America region or NULL country names.
SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
FULL JOIN  currencies
USING (code)
-- Where region is North America or name is null
WHERE region='North America'
OR name IS NULL
ORDER BY region;


-- --2.
-- Repeat the same query as before, turning your full join into a left join with the currencies table.
-- Have a look at what has changed in the output by comparing it to the full join result.

SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
LEFT JOIN currencies 
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;

-- --3.
-- Repeat the same query again, this time performing an inner join of countries with currencies.
-- Have a look at what has changed in the output by comparing it to the full join and left join results!

SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
INNER JOIN currencies 
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;


-- 4.
-- Complete the FULL JOIN with countries as c1 on the left and languages as l on the right, using code to perform this join.
-- Next, chain this join with another FULL JOIN, placing currencies on the right, joining on code again.
SELECT 
	c1.name AS country, 
    region, 
    l.name AS language,
	basic_unit, 
    frac_unit
FROM countries as c1 
-- Full join with languages (alias as l)
FULL JOIN languages AS l
USING (code)
-- Full join with currencies (alias as c2)
FULL JOIN currencies as c2 
USING (code)
WHERE region LIKE 'M%esia';