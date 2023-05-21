 SELECT country, round((population_2022/land_area_sq_km)/1000000) AS Density
FROM country
where round((population_2022/land_area_sq_km/1000000) <> 0
ORDER BY country 
;

SELECT country, round((total*100)/(pop2022*1000)) as army2
FROM army
Order by army2 desc
;


SELECT country, (last_updated_2023-population_2022) as growth
FROM country
Order by country 
;

SELECT country.country, (country.last_updated_2023-army.pop2022*1000) as growth
FROM country
join army using(country_id)
Order by country.country 
limit 10;


