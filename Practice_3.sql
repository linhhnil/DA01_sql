-- EX 1
SELECT NAME
FROM STUDENTS
WHERE MARKS>75
ORDER BY RIGHT(NAME, 3),ID

-- EX2
SELECT USER_ID , CONCAT(
    UPPER(SUBSTRING(NAME FROM 1 FOR 1)),
    LOWER(SUBSTRING(NAME FROM 2 ))
) AS NAME
FROM USERS
ORDER BY USER_ID

-- EX3 
SELECT MANUFACTURER, 
'$' || ROUND(SUM(TOTAL_SALES/1000000)) || ' ' || 'million' AS SALE_MIL
FROM pharmacy_sales
GROUP BY MANUFACTURER
ORDER BY SUM(TOTAL_SALES) DESC, MANUFACTURER

-- EX4
SELECT extract(month FROM submit_date), PRODUCT_ID, ROUND(AVG(STARS),2)
FROM reviews
GROUP BY extract(month FROM submit_date), PRODUCT_ID
ORDER BY extract(month FROM submit_date)

-- EX5
SELECT SENDER_ID, COUNT(MESSAGE_ID)
FROM messages
WHERE SENT_DATE >= '08-01-2022' AND SENT_DATE < '09-01-2022'
GROUP BY SENDER_ID
ORDER BY COUNT(MESSAGE_ID) DESC
LIMIT 2 

-- EX 6
select tweet_id
from tweets
where length(content) > 15

-- EX7


-- EX8
select id
from employees
where joining_date >= '2022-01-01' and joining_date <= '2022-08-01'
-- EX9
select position('a' in first_name)
from worker
where first_name = 'Amitah'
-- EX 10
select winery,left(substring( title from position('2' in title)),4) AS year
from winemag_p2
where country='Macedonia'
group by winery, left(substring( title from position('2' in title)),4)
