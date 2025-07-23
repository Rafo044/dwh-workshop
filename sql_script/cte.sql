with  last_paid as (
select first_name , last_transaction_date
from bank_customer_data 
where extract(year from last_transaction_date ) > 2024 )
select * 
from last_paid; 

