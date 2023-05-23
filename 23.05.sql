SELECT car, price,
CASE
    WHEN car = 'BMW' THEN price*0.5
    WHEN car = 'Mercedes-Benz' THEN price*0.7
    ELSE price*0.9
END AS sale
FROM cars;

SELECT car, price
FROM cars
Where car = 'Mercedes-Benz' and price > 200000;

SELECT *
FROM cars
Where car NOT IN('Nissan','OPEL','Mercedes-Benz','VAZ');

SELECT car, price
FROM cars
Where price between 200000 and 400000;

SELECT car, price, model
FROM cars
Where model LIKE 'A%'
Order by car;

SELECT  car, sum(price), count(price)
FROM cars
Group by car;

SELECT  car, min(price) as min_price, max(price) as max_price
FROM cars
Group by car
having sum(price) > 200000
Order by car;


SELECT *
FROM cars
Where price = (Select max(price) from cars);


SELECT car, price, model, year_of_release
FROM cars
Where price = (Select min(price) from cars) + 10000
Order by car desc;

SELECT car, price, year_of_release
FROM cars
Where car IN (Select car from cars GROUP BY car
        HAVING SUM(price) < 3000)
Order by car desc;

SELECT car, price, year_of_release
FROM cars
Where price < Any (
SELECT min(price) 
FROM cars
GROUP BY car);


SELECT car, price, year_of_release
FROM cars
Where price > All (
SELECT avg(price) 
FROM cars
GROUP BY car);


