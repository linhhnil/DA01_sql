-- ex 1:
SELECT NAME
FROM CITY 
WHERE POPULATION > 120000 AND COUNTRYCODE= 'USA'
-- ex 2:
SELECT *
FROM CITY
WHERE COUNTRYCODE= 'JPN'
-- ex 3:
SELECT CITY, STATE
FROM STATION
-- ex 4:
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE 'A%' 
OR CITY LIKE 'E%' 
OR CITY LIKE 'I%' 
OR CITY LIKE 'O%' 
OR CITY LIKE 'U%'
-- ex 5:
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE '%A' 
OR CITY LIKE '%E' 
OR CITY LIKE '%I' 
OR CITY LIKE '%O' 
OR CITY LIKE '%U'
-- EX 6
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT LIKE 'A%' 
AND CITY NOT  LIKE 'E%' 
AND CITY NOT  LIKE 'I%' 
AND CITY NOT  LIKE 'O%' 
AND CITY NOT  LIKE 'U%'
-- EX 7
SELECT name
FROM employee
ORDER BY name 
-- ex 8
SELECT  name
FROM employee
WHERE salary > 2000 and months < 10
ORDER BY employee_id 
-- ex9
SELECT  product_id
FROM products
WHERE low_fats = 'Y' AND recyclable = 'Y'
-- ex 10
SELECT  name
FROM customer
WHERE NOT referee_id = 2 or referee_id IS NULL

-- ex11
SELECT  name, population, area
FROM world
WHERE area >= 3000000 OR population >= 25000000

-- ex 12
SELECT  DISTINCT author_id AS id
FROM views
WHERE author_id=viewer_id
ORDER BY author_id ASC
 -- ex 13
SELECT  part, assembly_step 
FROM parts_assembly
WHERE finish_date IS NULL
-- ex 14
SELECT * 
FROM lyft_drivers
WHERE yearly_salary <= 30000 OR yearly_salary >= 70000
-- ex 15
SELECT  * 
FROM uber_advertising
WHERE money_spent > 100000 AND year = 2019



