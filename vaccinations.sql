-- Active: 1668393078736@@localhost@5432@postgres@public
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

COPY covid_vaccination(iso_code, continent, "location", "date", new_tests,  total_tests, total_tests_per_thousand,  new_tests_per_thousand, new_tests_smoothed, new_tests_smoothed_per_thousand,    positive_rate,  tests_per_case, tests_units,    total_vaccinations, people_vaccinated,  people_fully_vaccinated,    new_vaccinations,   new_vaccinations_smoothed,  total_vaccinations_per_hundred, people_vaccinated_per_hundred,  people_fully_vaccinated_per_hundred,    new_vaccinations_smoothed_per_million,  stringency_index,   population_density, median_age, aged_65_older,  aged_70_older,  gdp_per_capita, extreme_poverty,    cardiovasc_death_rate,  diabetes_prevalence,    female_smokers, male_smokers,   handwashing_facilities, hospital_beds_per_thousand, life_expectancy,    human_development_index)
FROM '/Users/thvuvi/Documents/Semester 3/Data Science/COVID/covidvacs.csv'

CSV HEADER
 