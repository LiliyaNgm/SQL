SELECT  car, min(price) as min_price, max(price) as max_price, (max(price)-min(price)) as Dif
FROM cars
Group by car
Order by car desc;


SELECT  car, round(sum(price))
From cars
Group by rollup (car)
HAVING count(car) > 100
Order by car;


SELECT  count(car), model
From cars
Group by 2
HAVING count(2) > 100
;


SELECT car, count(body)
From cars
Where car LIKE '%n'
Group by car
;


SELECT Distinct(car), count(body)
From cars
Group by car;

SELECT Distinct(car)
From cars
where car not like 'V%';

