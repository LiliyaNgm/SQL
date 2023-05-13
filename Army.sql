Create table Army (
    Country varchar(50),
    activeDuty int,
    paramilitary int,
    reserves int,
    total int,
    pop2022 float,	
    Country_id int,
    FOREIGN KEY (Country_id)  REFERENCES country (id)
    );

    \copy Army FROM '/datasets/army.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);
