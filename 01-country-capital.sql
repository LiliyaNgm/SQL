Create table Capitals (
    id serial primary key,
    Country varchar(50),
    Capital varchar(50),
    Continent varchar(50),	
    Country_id int,
    FOREIGN KEY (Country_id)  REFERENCES population (Id)
);
