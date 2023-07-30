Create table Marketing (
    Id serial primary key,
    Year_Birth int,
    Education varchar(50),
    Marital_Status varchar(50),
    Income int,	
    Dt_Customer date,
    Recency int,
    MntWines int,
    MntFruits int,
    MntMeatProducts int,
    MntFishProducts int,
    MntSweetProducts int,
    MntGoldProds int
);

\copy Marketing FROM '/datasets/Marketing.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);