--3 How many entries in the countries table are from Africa?
SELECT count(*) 
FROM countries
WHERE continent = 'Africa';
--A:56

--4 What was the total population of the continent of Oceania in 2005?
SELECT round(SUM(population_years.population), 2)
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE countries.continent = 'Oceania'
	AND population_years.year = 2005;
--A:32.66 million
	
--5 What is the average population of countries in South America in 2003?
SELECT round(AVG(population_years.population), 2)
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE countries.continent = 'South America'
	AND population_years.year = 2003;
--A: 25.89 million
	
--6 What country had the smallest population in 2007?
SELECT countries.name
	, population_years.population
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE population_years.year = 2007
	AND population_years.population IS NOT NULL
ORDER BY population_years.population ASC
LIMIT 1;
--A: Niue 0.00216 million

--7 What is the average population of Poland during the time period covered by this dataset?
SELECT round(avg(population_years.population), 2)
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE countries.name = 'Poland';
--A: 38.56 million

--8 How many countries have the word “The” in their name?
SELECT *
FROM countries
WHERE name like '% The %'
	OR name like 'The %'
	OR name like '% The';
--A:2

--9 What was the total population of each continent in 2010?
SELECT countries.continent, sum(population_years.population)
FROM countries
JOIN population_years
	ON countries.id = population_years.country_id
WHERE population_years.year = 2010
GROUP BY countries.continent;
--A:
--Africa	1015.47846
--Asia	4133.09148
--Europe	723.06044
--North America	539.79456
--Oceania	34.95696
--South America	396.58235
