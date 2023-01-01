/* 2022-11-13 22:02:46 [49 ms] */ 
CREATE TABLE profile(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    password TEXT,
    age INT

);
/* 2022-11-13 22:05:44 [21 ms] */ 
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    password TEXT,
    age INT

);
/* 2022-11-13 22:07:43 [7 ms] */ 
INSERT INTO "user" (email, name, age, password) VALUES('vgian002@odu.edu', 'Vu', 19, 'password'
);
/* 2022-11-13 22:12:34 [2 ms] */ 
SELECT * FROM "user";
/* 2022-11-13 22:12:38 [2 ms] */ 
UPDATE "user" SET email = 'vg@fake.edu' WHERE id = 1;
/* 2022-11-13 22:12:39 [1 ms] */ 
SELECT * FROM "user";
/* 2022-11-13 22:43:39 [16 ms] */ 
UPDATE "user" SET email = 'vg@fake.edu' WHERE id = 1;
/* 2022-11-13 22:47:18 [18 ms] */ 
CREATE TABLE post(

    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    content TEXT,
    user_id INT,
    CONSTRAINT fk_user
        FOREIGN KEY(user_id)
            REFERENCES "user"(id)
);
/* 2022-11-13 22:49:04 [7 ms] */ 
INSERT INTO post(name, content, user_id)
VALUES ('Why I love Corgis', 'omg', 1);
/* 2022-11-13 22:50:14 [6 ms] */ 
INSERT INTO post(name, content, user_id)
VALUES ('Why I love dogss', 'omg i love', 1);
/* 2022-11-13 22:50:58 [3 ms] */ 
SELECT * FROM post WHERE id = 1;
/* 2022-11-13 22:51:07 [1 ms] */ 
SELECT * FROM post WHERE user_id = 1;
/* 2022-11-13 22:52:03 [4 ms] */ 
SELECT * FROM "user" JOIN post ON post.user_id = "user".id;
/* 2022-11-13 22:53:38 [3 ms] */ 
SELECT "user".*, post.id, post.name AS title, post.content, post.user_id FROM "user" JOIN post ON post.user_id = "user".id;
/* 2022-11-13 23:02:28 [14 ms] */ 
CREATE TABLE covid_vaccination(

    id SERIAL PRIMARY KEY,
    iso_code TEXT,
    continent VARCHAR(20),
    country TEXT
);
/* 2022-11-13 23:02:45 [7 ms] */ 
CREATE TABLE covid_vaccination(

    id SERIAL PRIMARY KEY,
    iso_code TEXT,
    continent VARCHAR(20),
    "location" TEXT
);
/* 2022-11-13 23:26:13 [7 ms] */ 
CREATE TABLE covid_vaccination(

iso_code TEXT,
continent TEXT,
"location" TEXT, 
"date" DATE,
new_tests INT,
total_tests INT,
total_tests_per_thousand FLOAT,
new_tests_per_thousand FLOAT,
new_tests_smoothed INT,
new_tests_smoothed_per_thousand FLOAT,
positive_rate FLOAT,
tests_per_case FLOAT, 
tests_units TEXT,
total_vaccinations INT,
people_vaccinated INT,
people_fully_vaccinated INT, 
new_vaccinations INT,
new_vaccinations_smoothed INT, 
total_vaccinations_per_hundred INT, 
people_vaccinated_per_hundred FLOAT, 
people_fully_vaccinated_per_hundred FLOAT,
new_vaccinations_smoothed_per_million INT, 
stringency_index FLOAT, 
population_density FLOAT,
median_age FLOAT, 
aged_65_older FLOAT, 
aged_70_older FLOAT,
gdp_per_capita FLOAT,
extreme_poverty FLOAT,
cardiovasc_death_rate FLOAT,
diabetes_prevalence FLOAT,
female_smokers FLOAT,
male_smokers FLOAT,
handwashing_facilities FLOAT,
hospital_beds_per_thousand FLOAT,
life_expectancy FLOAT,
human_development_index FLOAT

);
/* 2022-11-13 23:30:45 [2 ms] */ 
CREATE TABLE covid_vaccination(

iso_code TEXT,
continent TEXT,
"location" TEXT, 
"date" DATE,
new_tests INT,
total_tests INT,
total_tests_per_thousand FLOAT,
new_tests_per_thousand FLOAT,
new_tests_smoothed INT,
new_tests_smoothed_per_thousand FLOAT,
positive_rate FLOAT,
tests_per_case FLOAT, 
tests_units TEXT,
total_vaccinations INT,
people_vaccinated INT,
people_fully_vaccinated INT, 
new_vaccinations INT,
new_vaccinations_smoothed INT, 
total_vaccinations_per_hundred FLOAT, 
people_vaccinated_per_hundred FLOAT, 
people_fully_vaccinated_per_hundred FLOAT,
new_vaccinations_smoothed_per_million INT, 
stringency_index FLOAT, 
population_density FLOAT,
median_age FLOAT, 
aged_65_older FLOAT, 
aged_70_older FLOAT,
gdp_per_capita FLOAT,
extreme_poverty FLOAT,
cardiovasc_death_rate FLOAT,
diabetes_prevalence FLOAT,
female_smokers FLOAT,
male_smokers FLOAT,
handwashing_facilities FLOAT,
hospital_beds_per_thousand FLOAT,
life_expectancy FLOAT,
human_development_index FLOAT

);
/* 2022-11-13 23:38:24 [356 ms] */ 
COPY covid_vaccination(iso_code, continent,	"location",	"date",	new_tests,	total_tests, total_tests_per_thousand,	new_tests_per_thousand,	new_tests_smoothed,	new_tests_smoothed_per_thousand,	positive_rate,	tests_per_case,	tests_units,	total_vaccinations,	people_vaccinated,	people_fully_vaccinated,	new_vaccinations,	new_vaccinations_smoothed,	total_vaccinations_per_hundred,	people_vaccinated_per_hundred,	people_fully_vaccinated_per_hundred,	new_vaccinations_smoothed_per_million,	stringency_index,	population_density,	median_age,	aged_65_older,	aged_70_older,	gdp_per_capita,	extreme_poverty,	cardiovasc_death_rate,	diabetes_prevalence,	female_smokers,	male_smokers,	handwashing_facilities,	hospital_beds_per_thousand,	life_expectancy,	human_development_index)
FROM '/Users/thvuvi/Documents/Semester 3/Data Science/COVID/covidvacs.csv'

CSV HEADER;
/* 2022-11-14 12:09:43 [35 ms] */ 
CREATE TABLE covid_deaths(  

iso_code TEXT,
continent TEXT,
"location" TEXT,
"date" DATE,
total_cases INT,
new_cases INT,
new_cases_smoothed FLOAT,
total_deaths INT,
new_deaths INT,
new_deaths_smoothed FLOAT,
total_cases_per_million FLOAT,
new_cases_per_million FLOAT,
new_cases_smoothed_per_million FLOAT,
total_deaths_per_million FLOAT,
new_deaths_per_million FLOAT,
new_deaths_smoothed_per_million FLOAT,
reproduction_rate FLOAT,
icu_patients INT,
icu_patients_per_million FLOAT,
hosp_patients INT,
hosp_patients_per_million FLOAT,
weekly_icu_admissions FLOAT,
weekly_icu_admissions_per_million FLOAT,
weekly_hosp_admissions FLOAT, 
weekly_hosp_admissions_per_million FLOAT,
new_tests INT, 
total_tests INT, 
total_tests_per_thousand FLOAT,
new_tests_per_thousand FLOAT, 
new_tests_smoothed INT,
new_tests_smoothed_per_thousand FLOAT,
positive_rate FLOAT,
tests_per_case FLOAT,
tests_units TEXT,
total_vaccinations INT,
people_vaccinated INT,
people_fully_vaccinated INT,
new_vaccinations INT,
new_vaccinations_smoothed INT,
total_vaccinations_per_hundred FLOAT,
people_vaccinated_per_hundred FLOAT,
people_fully_vaccinated_per_hundred FLOAT,
new_vaccinations_smoothed_per_million FLOAT, 
stringency_index FLOAT,
"population" INT,
population_density FLOAT,
median_age FLOAT,
aged_65_older FLOAT,
aged_70_older FLOAT,
gdp_per_capita FLOAT,
extreme_poverty FLOAT,
cardiovasc_death_rate FLOAT,
diabetes_prevalence FLOAT,
female_smokers FLOAT,
male_smokers FLOAT,
handwashing_facilities FLOAT,
hospital_beds_per_thousand FLOAT,
life_expectancy FLOAT,
human_development_index FLOAT


);
/* 2022-11-14 12:19:21 [6 ms] */ 
CREATE TABLE covid_deaths(  

iso_code TEXT,
continent TEXT,
"location" TEXT,
"date" DATE,
total_cases INT,
new_cases INT,
new_cases_smoothed FLOAT,
total_deaths INT,
new_deaths INT,
new_deaths_smoothed FLOAT,
total_cases_per_million FLOAT,
new_cases_per_million FLOAT,
new_cases_smoothed_per_million FLOAT,
total_deaths_per_million FLOAT,
new_deaths_per_million FLOAT,
new_deaths_smoothed_per_million FLOAT,
reproduction_rate FLOAT,
icu_patients INT,
icu_patients_per_million FLOAT,
hosp_patients INT,
hosp_patients_per_million FLOAT,
weekly_icu_admissions FLOAT,
weekly_icu_admissions_per_million FLOAT,
weekly_hosp_admissions FLOAT, 
weekly_hosp_admissions_per_million FLOAT,
new_tests INT, 
total_tests INT, 
total_tests_per_thousand FLOAT,
new_tests_per_thousand FLOAT, 
new_tests_smoothed INT,
new_tests_smoothed_per_thousand FLOAT,
positive_rate FLOAT,
tests_per_case FLOAT,
tests_units TEXT,
total_vaccinations INT,
people_vaccinated INT,
people_fully_vaccinated INT,
new_vaccinations INT,
new_vaccinations_smoothed INT,
total_vaccinations_per_hundred FLOAT,
people_vaccinated_per_hundred FLOAT,
people_fully_vaccinated_per_hundred FLOAT,
new_vaccinations_smoothed_per_million FLOAT, 
stringency_index FLOAT,
"population" FLOAT,
population_density FLOAT,
median_age FLOAT,
aged_65_older FLOAT,
aged_70_older FLOAT,
gdp_per_capita FLOAT,
extreme_poverty FLOAT,
cardiovasc_death_rate FLOAT,
diabetes_prevalence FLOAT,
female_smokers FLOAT,
male_smokers FLOAT,
handwashing_facilities FLOAT,
hospital_beds_per_thousand FLOAT,
life_expectancy FLOAT,
human_development_index FLOAT


);
/* 2022-11-14 12:19:27 [623 ms] */ 
COPY covid_deaths(iso_code,continent,"location","date",total_cases,	new_cases,	new_cases_smoothed,	total_deaths,	new_deaths,new_deaths_smoothed,	total_cases_per_million,	new_cases_per_million,	new_cases_smoothed_per_million,	total_deaths_per_million,	new_deaths_per_million,	new_deaths_smoothed_per_million,	reproduction_rate,	icu_patients,	icu_patients_per_million,	hosp_patients,	hosp_patients_per_million,	weekly_icu_admissions,	weekly_icu_admissions_per_million,	weekly_hosp_admissions,	weekly_hosp_admissions_per_million,	new_tests,	total_tests,	total_tests_per_thousand,	new_tests_per_thousand,	new_tests_smoothed,	new_tests_smoothed_per_thousand,	positive_rate,	tests_per_case,	tests_units,	total_vaccinations,	people_vaccinated,	people_fully_vaccinated,	new_vaccinations,	new_vaccinations_smoothed,	total_vaccinations_per_hundred,	people_vaccinated_per_hundred,	people_fully_vaccinated_per_hundred,	new_vaccinations_smoothed_per_million,	stringency_index,	"population",	population_density,	median_age,	aged_65_older,	aged_70_older,	gdp_per_capita,	extreme_poverty,	cardiovasc_death_rate,	diabetes_prevalence,	female_smokers,	male_smokers,	handwashing_facilities,	hospital_beds_per_thousand,	life_expectancy,	human_development_index)
FROM '/Users/thvuvi/Documents/Semester 3/Data Science/COVID/coviddeaths.csv'

CSV HEADER;
/* 2022-11-14 12:28:11 [1417 ms] */ 
SELECT *
FROM covid_deaths
ORDER BY 3,4;
/* 2022-11-15 08:14:02 [337 ms] */ 
SELECT "location", date, total_cases, new_cases, total_deaths, "population"
FROM covid_deaths
ORDER BY 1,2;
/* 2022-11-15 08:15:13 [3 ms] */ 
SELECT * FROM covid_deaths LIMIT 100;
/* 2022-11-15 08:17:45 [338 ms] */ 
SELECT "location", "date", total_cases, total_deaths, (total_deaths/total_cases)*100 AS death_percentage
FROM covid_deaths
ORDER BY 1,2;
/* 2022-11-15 08:19:01 [270 ms] */ 
SELECT "location", "date", total_cases, total_deaths, (total_deaths/total_cases)*100 AS FLOAT
FROM covid_deaths
ORDER BY 1,2;
/* 2022-11-15 08:19:44 [265 ms] */ 
SELECT "location", "date", total_cases, total_deaths, (total_deaths/total_cases)*100000 AS death_percentage
FROM covid_deaths
ORDER BY 1,2;
/* 2022-11-15 08:20:15 [282 ms] */ 
SELECT "location", "date", total_cases, total_deaths, (total_deaths/total_cases)*100000000 AS death_percentage
FROM covid_deaths
ORDER BY 1,2;
/* 2022-11-15 08:22:59 [306 ms] */ 
SELECT "location", "date", total_cases, total_deaths, CAST((total_deaths/total_cases) AS FLOAT) AS death_percentage
FROM covid_deaths
ORDER BY 1,2;
/* 2022-11-15 08:26:13 [46 ms] */ 
SELECT "location", "date", total_cases, total_deaths, CAST((total_deaths/total_cases) AS FLOAT) AS death_percentage
FROM covid_deaths
WHERE "location" LIKE '%states%'
ORDER BY 1,2;
/* 2022-11-15 08:26:35 [23 ms] */ 
SELECT "location", "date", total_cases, total_deaths, CAST((total_deaths/total_cases) AS FLOAT) AS death_percentage
FROM covid_deaths
WHERE "location" LIKE 'united'
ORDER BY 1,2;
/* 2022-11-15 08:26:40 [23 ms] */ 
SELECT "location", "date", total_cases, total_deaths, CAST((total_deaths/total_cases) AS FLOAT) AS death_percentage
FROM covid_deaths
WHERE "location" LIKE 'france'
ORDER BY 1,2;
/* 2022-11-15 08:26:54 [24 ms] */ 
SELECT "location", "date", total_cases, total_deaths, CAST((total_deaths/total_cases) AS FLOAT) AS death_percentage
FROM covid_deaths
WHERE "location" LIKE 'France'
ORDER BY 1,2;
/* 2022-11-15 08:27:02 [22 ms] */ 
SELECT "location", "date", total_cases, total_deaths, CAST((total_deaths/total_cases) AS FLOAT) AS death_percentage
FROM covid_deaths
WHERE "location" LIKE 'States'
ORDER BY 1,2;
/* 2022-11-15 08:27:09 [33 ms] */ 
SELECT "location", "date", total_cases, total_deaths, CAST((total_deaths/total_cases) AS FLOAT) AS death_percentage
FROM covid_deaths
WHERE "location" LIKE '%States%'
ORDER BY 1,2;
/* 2022-11-15 08:27:45 [28 ms] */ 
SELECT "location", "date", total_cases, total_deaths, CAST((total_deaths/total_cases)*100 AS FLOAT) AS death_percentage
FROM covid_deaths
WHERE "location" LIKE '%States%'
ORDER BY 1,2;
/* 2022-11-15 08:30:22 [30 ms] */ 
SELECT "location", "date", total_cases, "population", CAST((total_cases/"population")*100 AS FLOAT) AS case_percentage
FROM covid_deaths
WHERE "location" LIKE '%States%'
ORDER BY 1,2;
/* 2022-11-15 08:31:20 [30 ms] */ 
SELECT "location", "date", total_cases, "population", (total_cases/"population")*100 AS case_percentage
FROM covid_deaths
WHERE "location" LIKE '%States%'
ORDER BY 1,2;
/* 2022-11-15 08:36:17 [317 ms] */ 
SELECT "location", "date", total_cases, new_cases, total_deaths, "population"
FROM covid_deaths
ORDER BY 1,2;
/* 2022-11-15 08:39:12 [67 ms] */ 
SELECT "location", MAX(total_cases) as high_infection, "population", MAX((total_cases/"population")*100) AS case_percentage
FROM covid_deaths
GROUP BY "location", "population"
ORDER BY 1,2;
/* 2022-11-15 08:39:53 [48 ms] */ 
SELECT "location", MAX(total_cases) as high_infection, "population", MAX((total_cases/"population")*100) AS case_percentage
FROM covid_deaths
GROUP BY "location", "population"
ORDER BY case_percentage;
/* 2022-11-15 08:40:50 [58 ms] */ 
SELECT "location", MAX(total_cases) as high_infection, "population", MAX((total_cases/"population")*100) AS case_percentage
FROM covid_deaths
GROUP BY "location", "population"
ORDER BY case_percentage DESC;
/* 2022-11-15 08:44:17 [152 ms] */ 
SELECT "location", MAX(total_deaths) as highest_death, "population"
FROM covid_deaths
GROUP BY "location", "population", total_deaths
ORDER BY total_deaths DESC;
/* 2022-11-15 08:48:17 [61 ms] */ 
SELECT "location", MAX(total_deaths) as total_death
FROM covid_deaths
GROUP BY "location"
ORDER BY total_death DESC;
/* 2022-11-15 08:57:11 [35 ms] */ 
SELECT "location", MAX(total_deaths) as total_death
FROM covid_deaths
WHERE continent IS NULL
GROUP BY "location"
ORDER BY total_death DESC;
/* 2022-11-15 08:57:19 [35 ms] */ 
SELECT "location", MAX(total_deaths) as total_death
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY "location"
ORDER BY total_death DESC;
/* 2022-11-15 08:58:04 [33 ms] */ 
SELECT "location", MAX(total_deaths) as total_death
FROM covid_deaths
WHERE continent IS NOT NULL AND total_deaths IS NOT NULL
GROUP BY "location"
ORDER BY total_death DESC;
/* 2022-11-15 09:10:12 [29 ms] */ 
SELECT "location", MAX(total_deaths) AS total_death
FROM covid_deaths
WHERE continent IS NULL AND total_deaths IS NOT NULL
GROUP BY "location"
ORDER BY total_death DESC;
/* 2022-11-15 09:44:49 [27 ms] */ 
SELECT continent, MAX(total_deaths) AS total_death
FROM covid_deaths
WHERE continent IS NULL AND total_deaths IS NOT NULL
GROUP BY continent
ORDER BY total_death DESC;
/* 2022-11-15 09:45:57 [34 ms] */ 
SELECT continent, MAX(total_deaths) AS total_death
FROM covid_deaths
GROUP BY continent
ORDER BY total_death DESC;
/* 2022-11-15 09:47:42 [46 ms] */ 
SELECT "location", MAX(total_deaths) AS total_death
FROM covid_deaths
WHERE continent IS NULL AND total_deaths IS NOT NULL
GROUP BY "location"
ORDER BY total_death;
/* 2022-11-15 09:47:51 [28 ms] */ 
SELECT "location", MAX(total_deaths) AS total_death
FROM covid_deaths
WHERE continent IS NULL AND total_deaths IS NOT NULL
GROUP BY "location"
ORDER BY total_death DESC;
/* 2022-11-15 10:03:45 [272 ms] */ 
SELECT "location", "date", total_cases, total_deaths,(total_deaths/total_cases)*100 as death_percentage
FROM covid_deaths
WHERE continent IS NOT NULL
ORDER BY 1,2;
/* 2022-11-15 10:07:11 [43 ms] */ 
SELECT "date", SUM(new_cases)
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY "date"
ORDER BY 1,2;
/* 2022-11-15 10:07:49 [59 ms] */ 
SELECT "date", SUM(new_cases), SUM(new_deaths)
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY "date"
ORDER BY 1,2;
/* 2022-11-15 10:08:48 [65 ms] */ 
SELECT "date", SUM(new_cases), SUM(new_deaths), (SUM(new_deaths)/SUM(new_cases))*100 as death_percentage
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY "date"
ORDER BY 1,2;
/* 2022-11-15 10:24:03 [58 ms] */ 
SELECT "date", SUM(new_cases), SUM(new_deaths), (CAST(SUM(new_deaths) AS FLOAT)/CAST(SUM(new_cases) AS FLOAT))*100 as death_percentage
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY "date"
ORDER BY 1,2;
/* 2022-11-15 10:24:24 [37 ms] */ 
SELECT "date", SUM(new_cases), SUM(new_deaths), (CAST(SUM(new_deaths) AS FLOAT)/CAST(SUM(new_cases) AS FLOAT))*100 as death_percentage
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY "date"
ORDER BY 1,2 DESC;
/* 2022-11-15 10:24:35 [28 ms] */ 
SELECT "location", "date", total_cases, total_deaths, CAST((total_deaths/total_cases)*100 AS FLOAT) AS death_percentage
FROM covid_deaths
WHERE "location" LIKE '%States%'
ORDER BY 1,2;
/* 2022-11-15 10:25:41 [111 ms] */ 
SELECT "location", "date", total_cases, total_deaths, (CAST(total_deaths AS FLOAT)/total_cases)*100 AS death_percentage
FROM covid_deaths
WHERE "location" LIKE '%States%'
ORDER BY 1,2;
/* 2022-11-16 07:54:43 [371 ms] */ 
SELECT "date", SUM(new_cases), SUM(new_deaths), (CAST(SUM(new_deaths) AS FLOAT)/CAST(SUM(new_cases) AS FLOAT))*100 as death_percentage
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY "date"
ORDER BY 1,2 DESC;
/* 2022-11-16 07:57:00 [38 ms] */ 
SELECT "date", SUM(new_cases) AS cases, SUM(new_deaths) AS deaths, (CAST(SUM(new_deaths) AS FLOAT)/CAST(SUM(new_cases) AS FLOAT))*100 as death_percentage
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY "date"
ORDER BY 1,2 DESC;
/* 2022-11-16 08:03:47 [30 ms] */ 
SELECT SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths
FROM covid_deaths;
/* 2022-11-16 08:04:19 [498 ms] */ 
SELECT SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths
FROM covid_deaths
WHERE continent IS NOT NULL;
/* 2022-11-16 08:05:39 [27 ms] */ 
SELECT SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths
FROM covid_deaths
WHERE continent IS NULL;
/* 2022-11-16 08:06:42 [84 ms] */ 
SELECT "location"
FROM covid_deaths
WHERE continent IS NOT NULL;
/* 2022-11-16 08:10:42 [2038 ms] */ 
SELECT *
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date;
/* 2022-11-16 08:20:12 [216 ms] */ 
SELECT SUM(vax.total_vaccinations), SUM(dea.total_cases), (CAST(SUM(vax.total_vaccinations) AS FLOAT)/ SUM(dea.total_cases))*100 AS vax_vs_cases
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date;
/* 2022-12-31 15:34:32 [1045 ms] */ 
SELECT *
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date;
/* 2022-12-31 15:34:52 [34 ms] */ 
SELECT SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths
FROM covid_deaths
WHERE continent IS NOT NULL;
/* 2022-12-31 15:40:35 [253 ms] */ 
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL
ORDER BY 2,3;
/* 2022-12-31 15:42:03 [206 ms] */ 
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL;
/* 2022-12-31 15:42:48 [861 ms] */ 
SELECT *
FROM covid_deaths
ORDER BY 3,4;
/* 2022-12-31 15:44:17 [584 ms] */ 
SELECT *
FROM covid_vaccination
ORDER BY 2,3;
/* 2022-12-31 15:47:37 [255 ms] */ 
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location)
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL;
/* 2022-12-31 15:50:23 [25 ms] */ 
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location)
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL AND dea.location = 'Afghanistan';
/* 2022-12-31 15:50:49 [35 ms] */ 
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location)
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL AND dea.location = 'Canada';
/* 2022-12-31 15:52:55 [24 ms] */ 
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location)
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL AND dea.location = 'Canada'
ORDER BY 2,3;
/* 2022-12-31 15:53:56 [35 ms] */ 
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date)
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL AND dea.location = 'Canada'
ORDER BY 2,3;
/* 2022-12-31 15:55:04 [30 ms] */ 
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, 
SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL AND dea.location = 'Canada'
ORDER BY 2,3;
/* 2022-12-31 19:59:32 [26 ms] */ 
WITH pop_vs_vax (continent, location, date, population, new_vaccinations, rolling_people_vacinated)

AS 
(
    SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, 
SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL AND dea.location = 'Canada'
ORDER BY 2,3
)

SELECT *
FROM pop_vs_vax;
/* 2022-12-31 20:00:20 [30 ms] */ 
WITH pop_vs_vax (continent, location, date, population, new_vaccinations, rolling_people_vacinated)

AS 
(
    SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, 
SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL AND dea.location = 'Canada'
ORDER BY 2,3
)

SELECT *, (rolling_people_vacinated/population)*100
FROM pop_vs_vax;
/* 2022-12-31 20:01:11 [32 ms] */ 
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
/* 2022-12-31 20:08:17 [18 ms] */ 
CREATE TABLE percent_population_vaccinated
(
    continent varchar(255),
    location varchar(255),
    date date,
    population numeric,
    new_vaccinations numeric,
    rolling_people_vaccinated numeric

);
/* 2022-12-31 20:21:07 [12 ms] */ 
DROP TABLE IF EXISTS percent_population_vaccinated;
/* 2022-12-31 20:21:08 [44 ms] */ 
CREATE TABLE percent_population_vaccinated
(
    continent varchar(255),
    location varchar(255),
    date timestamp,
    population float,
    new_vaccinations float,
    rolling_people_vaccinated float

);
/* 2022-12-31 20:24:02 [302 ms] */ 
INSERT INTO percent_population_vaccinated
SELECT  dea.continent, dea.location, dea.date, dea.population, vax.new_vaccinations, 
SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date;
/* 2022-12-31 20:24:55 [120 ms] */ 
SELECT *, (rolling_people_vaccinated/population)*100
FROM percent_population_vaccinated;
/* 2022-12-31 20:26:13 [16 ms] */ 
SELECT *, (rolling_people_vaccinated/population)*100
FROM percent_population_vaccinated
WHERE continent IS NOT NULL AND location = 'Canada'
ORDER BY 2,3;
/* 2022-12-31 20:29:29 [57 ms] */ 
CREATE VIEW percent_population_vaxd AS
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, 
SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL AND dea.location = 'Albania';
/* 2022-12-31 20:30:24 [4 ms] */ 
DROP VIEW IF EXISTS percent_population_vaxd;
/* 2022-12-31 20:30:28 [3 ms] */ 
CREATE VIEW percent_population_vaxd AS
SELECT dea.location, dea.continent, dea.date, dea.population, vax.new_vaccinations, 
SUM(CAST(vax.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths dea
JOIN covid_vaccination vax
    ON dea.location = vax.location
    AND dea.date = vax.date
WHERE dea.continent IS NOT NULL;
/* 2022-12-31 20:41:08 [31 ms] */ 
SELECT *
FROM percent_population_vaxd
WHERE continent IS NOT NULL AND location = 'Canada';
