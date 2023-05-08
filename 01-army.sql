Create table Army (
    id serial primary key,
    Country varchar(50),
    activeDuty int,
    paramilitary int,
    reserves int,
    total int,
    pop2022 float,	
    Country_id int,
    FOREIGN KEY (Country_id)  REFERENCES population (Id)
);