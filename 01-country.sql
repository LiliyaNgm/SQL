
Drop table country2;
Drop table country;


create table country2 (
    id serial primary key,
    country varchar(100),
    last_updated_2023 varchar(20),
    population_2022 varchar(20),
    area_sq_km varchar(20),
    land_area_sq_km varchar(20),
    density_sq_km varchar(10),
    growth_rate varchar(10),
    world varchar(10)
);

create table country (
 id serial primary key,
 country varchar(100),
 last_updated_2023 int,
 population_2022 int,
 area_sq_km float,
 land_area_sq_km float,
 density_sq_km float,
 growth_rate float,
 world float
 );




