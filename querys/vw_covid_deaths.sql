CREATE VIEW dbo.vw_covid_deaths
AS
SELECT        iso_code, continent, location, date, total_cases, new_cases, new_cases_smoothed, population, total_deaths, new_deaths, new_deaths_smoothed, total_cases_per_million, new_cases_per_million, 
                         new_cases_smoothed_per_million, total_deaths_per_million, new_deaths_per_million, new_deaths_smoothed_per_million, reproduction_rate, icu_patients, icu_patients_per_million, hosp_patients, hosp_patients_per_million, 
                         weekly_icu_admissions, weekly_hosp_admissions, weekly_hosp_admissions_per_million, weekly_icu_admissions_per_million
FROM            dbo.Covid
