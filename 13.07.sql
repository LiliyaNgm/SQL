select * 
Into book5
From book3;

insert into book5
select * from book;

Alter table book
Drop column Price;

Delete from book5
Where amount = 3 
Returning *;

Update book5
Set amount = 5 
Where amount >=3
Returning book_id, title, amount as new_amount;

Create view ContinentV as
SELECT count(country), continent
   from age
   join continent using(continent_id)
   group by continent 
 ;
 select * from ContinentV; 

Create or replace view CountryA as
 SELECT army.country, population_2022, pop2022
FROM 
    country
   join army using(country_id)
   where army.country LIKE 'A%'
 ;
select * from CountryA;

Create or replace view CountryA as
 SELECT army.country, population_2022, pop2022
FROM 
    country
   join army using(country_id)
   where army.country LIKE '%ia'
 ;

 Alter view CountryA rename to CountryIA;

 
 create view v_age as select * from age;
insert into v_age(continent_id) values(1);
select * from v_age;