EX1


with twt_spend as (
select 
extract(year from transaction_date) as year,
product_id, spend as curr_year_spend,
lag(spend) over(partition by product_id 
order by 
product_id,
extract(year from transaction_date)) as prev_year_spend
from user_transactions
) 
select year,
product_id, 
curr_year_spend,
prev_year_spend,
round( 100*(curr_year_spend-prev_year_spend)/prev_year_spend , 2)
from twt_spend

EX2
SELECT DISTINCT
  card_name,
  FIRST_VALUE(issued_amount) 
  OVER(PARTITION BY card_name ORDER BY issue_year, issue_month) AS issued_amount
FROM monthly_cards_issued
ORDER BY issued_amount DESC

EX3
select user_id, spend, transaction_date
from (
select *,
row_number() over(partition by user_id order by transaction_date) as stt 
from TRANSACTIONs
) as a
where stt=3

EX4
with cte as (
SELECT 
    transaction_date, 
    user_id, 
    product_id, 
    RANK() OVER (
      PARTITION BY user_id 
      ORDER BY transaction_date DESC)   FROM user_transactions
)
select transaction_date,
user_id, count(product_id)
from cte 
where rank=1
group by transaction_date, user_id
order by transaction_date 

EX5

EX6
EX7
select person_name
from (SELECT person_name,turn,
sum(weight) over (order by turn) AS wei FROM queue) a
where wei <= 1000
order by turn desc
limit 1

EX8
