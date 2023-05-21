
SELECT country, Population_female, Population_male
FROM 
    Soci_econ
    UNION
    SELECT Country, Population_2020, Migrants
FROM 
    world_pop;
    

    SELECT country, Continent_id
FROM 
    Soci_econ
    UNION
    SELECT Capital, Country_id 
FROM 
    capitals;

   SELECT avg(Male_Life), continent
   from age
   join continent using(continent_id)
   
   group by continent 
 ; 

SELECT min(Female_Life), continent
   from age
   join continent using(continent_id)
   
   group by continent 
 ; 

SELECT round(avg(Male_Life)), continent
   from age
   join continent using(continent_id)
   
   group by continent 
 ; 

SELECT max(Female_Life), continent
   from age
   join continent using(continent_id)
   
   group by continent 
 ; 

 