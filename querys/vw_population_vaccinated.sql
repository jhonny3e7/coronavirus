CREATE VIEW dbo.vw_PercentPopulationVaccinated AS

-- Looking at Total Population and Vaccinations
with PopvsVac (continent, location, date, population, new_vaccinations, RollingPeopleVaccinated)
as
(
SELECT continent, location, date, population, new_vaccinations, 
	sum(new_vaccinations) over (PARTITION by location order by location, date) as RollingPeopleVaccinated
FROM dbo.Covid c 
where NULLIF(continent, '') is not NULL 
)

select *, (RollingPeopleVaccinated/population)*100 PercentPeopleVaccinated
from PopvsVac