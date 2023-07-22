select country
from country
intersect
select country
from age;

select country
from country
except
select country
from age;

select country
from country
union
select country
from age;

select country
from country
except all
select country
from age;


select country
from country
intersect
select country
from age
intersect
select country
from army;

select country
from country
intersect
select country
from age
except
select country
from army
order by country;