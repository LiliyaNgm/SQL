Create table supermarket_sales (
    Product_id serial primary key,
    Gender varchar(50),
    Product_line varchar(50),
    Unit_price float,	
    Quantity int,
    Tax_5 float,
    Total float,
    Data date,
    Payment varchar(50),
    Rating float
);

\copy supermarket_sales FROM '/datasets/supermarket_sales.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);