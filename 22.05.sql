SELECT car, sum(price)
FROM cars
Group by cube (car)
;

SELECT car, price, year_of_release
FROM cars
where car = 'Mercedes-Benz' and price > 30000
Order by year_of_release;

SELECT car, price, model
FROM cars
where price = (
SELECT Max(price) FROM cars
);


SELECT car, count(price)
FROM cars
Group by car
Having sum(price) > 400000;


SELECT car, count(body)
FROM cars
Group by car
Having count(body) > 200;



