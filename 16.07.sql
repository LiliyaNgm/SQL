Create or replace function Cars_F() returns bigint as $$
select sum(price)
from cars
$$ language SQl
;

select * from cars_F();

Create or replace function Cars_FP() returns float as $$
select avg(price)
from cars
$$ language SQl
;

select * from cars_FP() as avg_price;

Create or replace function Cars_F_P(car_name varchar) returns real as $$
select min(price)
from cars
where car = car_name
$$ language SQl
;

select * from cars_F_P('Ford') as min_price;


Create or replace function Cars_max_min(out max_price real, out min_price real) as $$
select max(price), min(price)
from cars
$$ language SQl
;

select * from Cars_max_min();

