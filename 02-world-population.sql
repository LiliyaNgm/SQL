\copy world_pop2 FROM '/datasets/world-population.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);

UPDATE world_pop2 SET Urban_Pop = REPLACE(Urban_Pop, '%', '');
UPDATE world_pop2 SET World_Share = REPLACE(World_Share, '%', '');

INSERT INTO world_pop
 (country, Population_2020, Migrants, Fert_Rate, Med_Age, Urban_Pop, World_Share, Continent_id)

SELECT
    country, CAST(Population_2020 AS float), CAST(Migrants AS float), CAST(Fert_Rate AS float), CAST(Med_Age AS float), CAST(Urban_Pop AS float), CAST(World_Share AS FLOAT), Continent_id
FROM world_pop2;