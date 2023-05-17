\copy country2 FROM '/datasets/country.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);

UPDATE country2 SET growth_rate = REPLACE(growth_rate, '%', '');
UPDATE country2 SET world = REPLACE(world, '%', '');
UPDATE country2 SET area_sq_km = REPLACE(area_sq_km, 'M', '00000');
UPDATE country2 SET area_sq_km = REPLACE(area_sq_km, 'K', '00');
UPDATE country2 SET land_area_sq_km= REPLACE(land_area_sq_km, 'M', '00000');
UPDATE country2 SET land_area_sq_km= REPLACE(land_area_sq_km, 'K', '00');
UPDATE country2 SET density_sq_km= REPLACE(density_sq_km, 'M', '');


INSERT INTO country
(country_id, country, last_updated_2023, population_2022, area_sq_km, land_area_sq_km, density_sq_km, growth_rate, world)

SELECT
country_id, country, CAST(last_updated_2023 AS INT), CAST(population_2022 AS INT), CAST(area_sq_km AS FLOAT), CAST(land_area_sq_km AS FLOAT), CAST(density_sq_km AS FLOAT), CAST(growth_rate AS FLOAT), CAST(world AS FLOAT)
FROM country2;
