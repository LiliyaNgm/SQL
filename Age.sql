Create table Age (
    Country varchar(50),
    Overall_Life float,
    Male_Life float,	
    Female_Life float,
    Continent_id int,
    FOREIGN KEY (Continent_id)  REFERENCES Continent (id)
    
);

\copy Age FROM '/datasets/age.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);