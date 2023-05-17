SELECT country, capital
FROM 
    country
   join capitals using(country_id)
 ;



    SELECT country, Male_Life, continent
FROM 
    age
   join continent using(continent_id)
 ;

SELECT army.country, population_2022, pop2022
FROM 
    country
   join army using(country_id)
   
 ;

SELECT country.country, capital, population_2022, Population_2020
FROM 
    country
   join capitals using(country_id)
   join world_pop using(capital_id)
 ;

 SELECT count(country), continent
   from age
   join continent using(continent_id)
   group by continent 
 ;

SELECT sum(Population_male), continent
   from Soci_econ
   join continent using(continent_id)
   
   group by continent 
 ;

