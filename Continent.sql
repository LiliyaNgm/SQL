create table Continent (
 Continent_id serial primary key,
 Continent varchar(30)
);

INSERT INTO Continent 
(Continent_id, Continent)
VALUES (1, 'Europe'),
(2, 'Asia'),
(3, 'Africa'),
(4, 'North America'),
(5, 'South America'),
(6, 'Oceania');