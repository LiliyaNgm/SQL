Create table Ikea (
    Product_id serial primary key,
    Product_name varchar(50),
    Category varchar(50),
    Price float,	
    Other_color varchar(50),
    Designer varchar(500),
    Depth int,
    Height int,
    Width int
);

\copy Ikea FROM '/datasets/Ikea.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);