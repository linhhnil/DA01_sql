-- EX 1
SELECT 
sum(case
when device_type ='laptop'then 1 else 0 end) as laptop,
sum(case 
when device_type in('tablet', 'phone') then 1 else 0 end) as mobile
from viewership

-- EX2
select x, y, z,  
case
when x + y > z and x + z > y and y+z > x then 'Yes'
else 'No'
end as triangle
From Triangle

-- EX 3
SELECT
round(100*sum(CASE when call_category IS NULL OR call_category='n/a' then 1 else 0 END)/count(case_id),1)
from callers
  
-- EX 4
select name
from customer
where not referee_id = 2 or referee_id is null
 -- ex 5
select  survived,
sum( case when pclass= 1 then 1 else 0 end) as first_class,
sum( case when pclass= 2 then 1 else 0 end) as second_class,
sum( case when pclass= 3 then 1 else 0 end) as third_class
from titanic
group by survived
