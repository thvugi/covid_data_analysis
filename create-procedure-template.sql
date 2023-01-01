-- Active: 1668393078736@@localhost@5432@postgres@public
SELECT *
FROM covid_deaths
ORDER BY 3,4;

SELECT "location", "date", total_cases, new_cases, total_deaths, "population"
FROM covid_deaths
ORDER BY 1,2;

--Total cases vs total deaths

SELECT "location", "date", total_cases, total_deaths, (CAST(total_deaths AS FLOAT)/total_cases)*100 AS death_percentage
FROM covid_deaths
WHERE "location" LIKE '%States%'
ORDER BY 1,2;

--total cases vs population


SELECT "location", "date", total_cases, "population", (total_cases/"population")*100 AS case_percentage
FROM covid_deaths
WHERE "location" LIKE '%States%'
ORDER BY 1,2;

--countries with high infection rates
SELECT "location", MAX(total_cases) AS high_infection, "population", MAX((total_cases/"population")*100) AS case_percentage
FROM covid_deaths
GROUP BY "location", "population"
ORDER BY case_percentage DESC;

--countries death counts

SELECT "location", MAX(total_deaths) AS total_death
FROM covid_deaths
WHERE continent IS NOT NULL AND total_deaths IS NOT NULL
GROUP BY "location"
ORDER BY total_death DESC;

--continent death count

SELECT "location", MAX(total_deaths) AS total_death
FROM covid_deaths
WHERE continent IS NULL AND total_deaths IS NOT NULL
GROUP BY "location"
ORDER BY total_death DESC;

--GLOBAL NUMBERS
SELECT "date", SUM(new_cases) AS cases, SUM(new_deaths) AS deaths, (CAST(SUM(new_deaths) AS FLOAT)/CAST(SUM(new_cases) AS FLOAT))*100 as death_percentage
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY "date"
ORDER BY 1,2 DESC;


--total cases vs total deaths
SELECT SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths
FROM covid_deaths
WHERE continent IS NOT NULL;

--joined two tables covid deaths and vaccinations
SELECT *
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date;

--total population vs vaccinations

SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, 
SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL AND dea.location = 'Canada'
ORDER BY 2,3;



--- USE CTE 


WITH pop_vs_vax (continent, location, date, population, new_vaccinations, rolling_people_vaccinated)

AS 
(
    SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, 
SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL AND dea.location = 'Albania'
ORDER BY 2,3
)

SELECT *, (rolling_people_vaccinated/population)*100
FROM pop_vs_vax;


--USING TEMP



DROP TABLE IF EXISTS percent_population_vaccinated ;
CREATE TABLE percent_population_vaccinated
(
    continent varchar(255),
    location varchar(255),
    date timestamp,
    population float,
    new_vaccinations float,
    rolling_people_vaccinated float

);

INSERT INTO percent_population_vaccinated
SELECT  dea.continent, dea.location, dea.date, dea.population, vax.new_vaccinations, 
SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date;


SELECT *, (rolling_people_vaccinated/population)*100
FROM percent_population_vaccinated
WHERE continent IS NOT NULL AND location = 'Canada'
ORDER BY 2,3;


--Creating a view to store date for visualization


DROP VIEW IF EXISTS percent_population_vaxd;

CREATE VIEW percent_population_vaxd AS
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, 
SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL;



SELECT *
FROM percent_population_vaxd
WHERE continent IS NOT NULL AND location = 'Canada';