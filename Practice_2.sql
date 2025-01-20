-- ex1
SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0
-- ex 2
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION
-- ex 3
SELECT CEILING(AVG(SALARY)- AVG(REPLACE(SALARY, '0', '')))
 FROM EMPLOYEES
-- ex4
SELECT ROUND(CAST(SUM(ITEM_COUNT*ORDER_OCCURRENCES)/SUM(ORDER_OCCURRENCES) AS DECIMAL),1)
FROM ITEMS_PER_ORDER
 -- EX 5
SELECT candidate_id
FROM candidates
WHERE skill IN('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING count(skill)=3
ORDER BY candidate_id 

-- EX 6
SELECT USER_ID, DATE(MAX(POST_DATE)) - DATE(MIN(POST_DATE))
FROM POSTS
WHERE POST_DATE >= '2021-01-01' AND POST_DATE <= '2022-01-01'
GROUP BY USER_ID
HAVING COUNT(POST_ID) >=2
 -- EX 7
SELECT CARD_NAME, MAX(ISSUED_AMOUNT)-MIN(ISSUED_AMOUNT) AS DIFFERENCE
FROM monthly_cards_issued
GROUP BY CARD_NAME
ORDER BY MAX(ISSUED_AMOUNT)-MIN(ISSUED_AMOUNT) DESC
-- EX 8
SELECT  manufacturer, count(drug),abs(SUM(total_sales-cogs)) as column 
FROM pharmacy_sales
where total_sales-cogs <= 0
group by manufacturer
order by abs(SUM(total_sales-cogs)) desc
-- EX 9
select *
from cinema
where not description= 'boring' and id% 2=1
order by id desc

-- EX 10
select teacher_id, count( distinct subject_id) as cnt
from teacher
group by teacher_id

-- EX 11
select user_id, count(follower_id) as followers_count
from followers
group by user_id

-- EX 12
select class
from courses
group by class
having count(student) >= 5
