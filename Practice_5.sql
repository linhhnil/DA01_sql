-- EX1

select COUNTRY.Continent, floor(avg(CITY.Population))
from city inner join country on city.countrycode=country.code
group by COUNTRY.Continent

-- EX2
SELECT ROUND(CAST(SUM(CASE WHEN B.signup_action='Confirmed' THEN 1 ELSE 0 END) AS DECIMAL)/COUNT(USER_ID),2)
FROM EMAILS AS A  JOIN TEXTS AS B ON A.EMAIL_ID=B.EMAIL_ID

-- EX3
select age_bucket,
round(100*sum(case when a.activity_type='send' then a.time_spent else 0 end) /sum(a.time_spent),2) as send_perc,
round(100*sum(case when a.activity_type='open' then a.time_spent else 0 end) /sum(a.time_spent),2) as open_perc
from activities as a left join age_breakdown as b on a.user_id=b.user_id
where a.activity_type in ('send','open')
group by b.age_bucket

-- EX4
SELECT
  customers.customer_id
FROM customer_contracts AS customers
inner JOIN products 
  ON customers.product_id = products.product_id
GROUP BY customers.customer_id
HAVING COUNT(DISTINCT product_category) = 3

-- EX5
  SELECT e2.employee_id, e2.name, COUNT(e1.employee_id)as reports_count, ROUND(AVG(e1.age)) as average_age
FROM Employees as e1 JOIN Employees as e2
ON e1.reports_to = e2.employee_id
GROUP BY e2.employee_id

-- EX6


SELECT p.product_name, SUM(o.unit) 
FROM Products as p JOIN Orders as o ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100

-- EX7
SELECT a.page_id
FROM pages as a full join page_likes as b on a.page_id=b.page_id
where b.liked_date is null
order by a.page_id
