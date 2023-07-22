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

Create or replace function Cars_D() returns setof double precision as $$
select avg(price)
from cars
group by car
$$ language SQl
;

select * from Cars_D;


Create or replace function Cars_S_A(out sum_price real, out avg_price float) returns setof record as $$
select sum(price), avg(price)
from cars
group by car
$$ language SQl
;

select sum_price, avg_price from Cars_S_A();

Drop function Cars_S_A;

Create or replace function Cars_S_A() returns setof record as $$
select sum(price), avg(price)
from cars
group by car
$$ language SQl
;

select * from Cars_S_A() as (sum_price real, avg_price float); # второй вариант как вернуть несколько строк


Create or replace function Cars_T(car varchar) returns table(car varchar, body varchar, model varchar) as $$
select car, body, model
from cars
where car = cars_t.car
$$ language SQl
;

select * from Cars_T('Nissan');

Create or replace function Cars_S(car varchar) returns setof cars as $$
select *
from cars
where car = cars_s.car
$$ language SQl
;

select * from Cars_S('BMW');

