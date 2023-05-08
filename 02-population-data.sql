\copy population2 FROM 'datasets/2023_population.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);

UPDATE population2 SET growth_rate = REPLACE(growth_rate, '%', '');
UPDATE population2 SET world = REPLACE(world, '%', '');
UPDATE population2 SET area_sq_km = REPLACE(area_sq_km, 'M', '00000');
UPDATE population2 SET area_sq_km = REPLACE(area_sq_km, 'K', '00');
UPDATE population2 SET land_area_sq_km= REPLACE(land_area_sq_km, 'M', '00000');
UPDATE population2 SET land_area_sq_km= REPLACE(land_area_sq_km, 'K', '00');
UPDATE population2 SET density_sq_km= REPLACE(density_sq_km, 'M', '');


INSERT INTO population
(id, country, last_updated_2023, population_2022, area_sq_km, land_area_sq_km, density_sq_km, growth_rate, world)

SELECT
    id, country, CAST(last_updated_2023 AS INT), CAST(population_2022 AS INT), CAST(area_sq_km AS FLOAT), CAST(land_area_sq_km AS FLOAT), CAST(density_sq_km AS FLOAT), CAST(growth_rate AS FLOAT), CAST(world AS FLOAT)
FROM population2;
