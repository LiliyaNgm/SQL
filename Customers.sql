Create table Customers (
    Customer_ID serial primary key,
    Gender varchar(50),
    Age int,
    Annual_Income int,	
    Spending_Score_1_100 int,
    Profession varchar(50),
    Work_Experience int,
    Family_Size int
);

\copy Customers FROM '/datasets/Customers.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true);