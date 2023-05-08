Create table Age (
    id serial primary key,
    Country varchar(50),
    Overall Life float,
    Male Life float,	
    Female Life float,
    Continent varchar(50),
    Country_id int,
    Continent_id int,
    FOREIGN KEY (Country_id)  REFERENCES population (Id)
    FOREIGN KEY (Continent_id)  REFERENCES / (Id)
);