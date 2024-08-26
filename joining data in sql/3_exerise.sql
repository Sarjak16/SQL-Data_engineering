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

