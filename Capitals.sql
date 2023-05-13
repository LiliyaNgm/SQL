Create table Capitals (
    id serial primary key,
    Capital varchar(50),	
    Country_id int,
    FOREIGN KEY (Country_id)  REFERENCES Country (id)  
    
);

\copy Capitals FROM '/datasets/capitals.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);
