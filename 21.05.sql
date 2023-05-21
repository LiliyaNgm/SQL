SELECT car, round(sum(price)) as sum_price
FROM cars
Group by car
;

SELECT car, count(body)
FROM cars
Group by car;


SELECT count(car), body
FROM cars
Group by body;

SELECT count(car), engType
FROM cars
Group by engType;

SELECT car, price, year_of_release
FROM cars
where year_of_release = '2010'
order by car;

SELECT car, model, round(sum(price)) as sum_price
FROM cars
Group by rollup (car,model)
;

SELECT car, round(sum(price)) as sum_price
FROM cars
Group by rollup (car)
;

SELECT car, year_of_release, round(sum(price)) as sum_price
FROM cars
Group by rollup (car,year_of_release)
Order by car;

SELECT model, Count(car), round(sum(price)) as sum_price
FROM cars
Group by rollup (model)
;

SELECT car, count(model), price
FROM cars
Group by rollup (car,price)
;

SELECT car, count(model), price
FROM cars
Group by cube (car,price)
;

