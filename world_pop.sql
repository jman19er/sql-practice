SELECT COUNT(*) FROM countries
WHERE continent = 'Africa'; 
--3 56
SELECT countries.continent,
population_years.year,
SUM(population_years.population) 
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2005
AND countries.continent = 'Oceania';

--4 32.66

SELECT countries.continent,
population_years.year,
AVG(population_years.population) 
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE year = 2003
AND continent = 'South America'
GROUP BY 1,2;


--5 25.89 million
SELECT 
countries.name,
MIN(population_years.population)
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2007;
--6 Niue .00216

SELECT countries.name,
AVG(population_years.population)
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE countries.name = 'Poland';

-- 7 38.56
SELECT COUNT(*) FROM countries
WHERE name LIKE '%The%';

-- 8 4
SELECT 
population_years.year,
countries.continent,
SUM(population_years.population)
FROM countries
LEFT JOIN population_years
ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY 2;

