-- Active: 1668393078736@@localhost@5432@postgres@public
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

COPY covid_deaths(iso_code,continent,"location","date",total_cases,	new_cases,	new_cases_smoothed,	total_deaths,	new_deaths,new_deaths_smoothed,	total_cases_per_million,	new_cases_per_million,	new_cases_smoothed_per_million,	total_deaths_per_million,	new_deaths_per_million,	new_deaths_smoothed_per_million,	reproduction_rate,	icu_patients,	icu_patients_per_million,	hosp_patients,	hosp_patients_per_million,	weekly_icu_admissions,	weekly_icu_admissions_per_million,	weekly_hosp_admissions,	weekly_hosp_admissions_per_million,	new_tests,	total_tests,	total_tests_per_thousand,	new_tests_per_thousand,	new_tests_smoothed,	new_tests_smoothed_per_thousand,	positive_rate,	tests_per_case,	tests_units,	total_vaccinations,	people_vaccinated,	people_fully_vaccinated,	new_vaccinations,	new_vaccinations_smoothed,	total_vaccinations_per_hundred,	people_vaccinated_per_hundred,	people_fully_vaccinated_per_hundred,	new_vaccinations_smoothed_per_million,	stringency_index,	"population",	population_density,	median_age,	aged_65_older,	aged_70_older,	gdp_per_capita,	extreme_poverty,	cardiovasc_death_rate,	diabetes_prevalence,	female_smokers,	male_smokers,	handwashing_facilities,	hospital_beds_per_thousand,	life_expectancy,	human_development_index)
FROM '/Users/thvuvi/Documents/Semester 3/Data Science/COVID/coviddeaths.csv'

CSV HEADER

