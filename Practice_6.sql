EX 1
with job_count AS (
select company_id, title, description, count(job_id) as job_count
from job_listings
group by company_id, title, description
)
 select count(company_id)
 from job_count
 where job_count >1


EX2
EX3
with caller as (
select policy_holder_id,count(case_id)
from callers
group by policy_holder_id
having count(case_id) >=3
)
select count (policy_holder_id)
from caller

EX4
SELECT a.page_id
FROM pages as a full join page_likes as b on a.page_id=b.page_id
where b.liked_date is null
order by a.page_id

EX5
SELECT EXTRACT(MONTH FROM event_date) AS MONTH, count(DISTINCT user_id) AS Monthly_Active_Users
FROM user_actions
WHERE event_date BETWEEN '07/01/2022' AND '07/31/2022'
AND user_id IN 
(
SELECT user_id
FROM user_actions
WHERE event_date BETWEEN '06/01/2022' AND '06/30/2022'
)
GROUP BY MONTH

EX6
Select  LEFT(trans_date, 7) AS month,
country, count(id) as trans_count,
sum(state='approved' ) as approved_count,
sum(amount) as trans_total_amount,
sum((state='approved' ) *amount) as  approved_total_amount
from Transactions
group by month, country

EX7
select a.product_id, min(a.year) as first_year, a.quantity, a.price
from sales as a left join product as b on a.product_id=b.product_id
group by a.product_id



EX8
# Write your MySQL query statement below
SELECT customer_id
FROM Customer
GROUP BY  customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(product_key) FROM Product)

EX9
SELECT employee_id
FROM Employees
WHERE salary<30000
AND manager_id NOT IN (
    select employee_id
    from Employees
)
ORDER BY employee_id

EX10
with job_count AS (
select company_id, title, description, count(job_id) as job_count
from job_listings
group by company_id, title, description
)
 select count(company_id)
 from job_count
 where job_count >1

EX11
EX12
