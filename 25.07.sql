Create table Capitals2 (
    Capital_id serial primary key,
    Capital varchar(50),	
    Country_id int,
    FOREIGN KEY (Country_id)  REFERENCES Capitals2 (Capital_id)  
    
);

\copy Capitals2 FROM '/datasets/capitals.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);


select cap.Capital || '' || cap.Country_id as Capitals2,
c.Capital || ''|| c.country_id as Country
from Capitals2 cap
left join Capitals2 c  On c.Capital_id = cap.country_id
Order by country;

# соединение таблицы саму на себя, получилось как получилось) 

select Continent_id, avg(Overall_Life)
from age
group by Continent_id
order by avg(Overall_Life) desc
;


select Continent_id, avg(Population_male), avg(Male_Life)
from age
join Soci_econ using (Continent_id)
group by Continent_id
order by avg(Male_Life) desc
;

SELECT country, Urban_population
from Soci_econ
where Urban_population > (SELECT avg(Urban_population) from Soci_econ)
Order by country;

SELECT country, Urban_population
from Soci_econ
where Urban_population > (SELECT min(Urban_population) from Soci_econ)
Order by country;

SELECT country, Population_female
from Soci_econ
where Population_female > (SELECT count(Population_female) from Soci_econ)
Order by country;