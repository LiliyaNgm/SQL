Create table Soci_econ (
    Country varchar(50),
    Surface_area_km2 int,	
    Sex_ratio_100 float,
    Urban_population float,
    Fertility_rate_total float,
    Infant_mortality_rate_1000 float,
    Individuals_using_the_Internet_100_inhabitants float,
    Quality_Of_Life_Index float,
    Safety_Index float,
    Health_Care_Index float,
    Cost_of_Living float,
    Life_expectancy_female float,
    Life_expectancy_male float,
    Life_expectancy_total float,
    Population_female float,
    Population_male float,
    Continent_id int,
    
    FOREIGN KEY (Continent_id)  REFERENCES Continent (id)
    
);
 