/* Q1 */
select first_name ,last_name ,city
from bank_customer_data ;

/* Q2   */

select first_name, city,account_balance
from bank_customer_data 
where city = 'Boston' and account_balance > 5000;

/* Q3 */

select first_name , extract(year from date_of_account_opening ) as dao   
from bank_customer_data 
where dao = '2024';

/* Q4 */

select first_name, last_name ,loan_status , loan_amount
from bank_customer_data
where loan_status  = 'Approved';

/* Q5 */

select first_name, last_name,account_balance
from bank_customer_data 
order by account_balance asc limit 5;

/* Q6 */
select first_name , date_of_account_opening
from bank_customer_data 
order by date_of_account_opening asc limit 10;

/* Q7 */

select count(first_name)
from bank_customer_data ;

/*Q8 */

select sum(age)/count(age) as average_age
from bank_customer_data ;

/* Q9 */

select count(first_name) , gender 
from bank_customer_data 
group by (gender);

/*  Q10 */


select city,sum(account_balance) as total_balance
from bank_customer_data 
group by (city)
order by total_balance  asc;


/*  Q11  */

select count(account_balance) 
from bank_customer_data
where account_balance is null;


SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'bank_customer_data';



select account_type ,avg(account_balance) 
from bank_customer_data 
where account_balance  > 5000
group by (account_type ) ;


/* Q12 */

select loan_type ,avg(interest_rate) as avg_interest_rate,count(*) as loan_count
from bank_customer_data
group by loan_type;

/* Q13 */


select city, count(card_id)
from bank_customer_data
group by city;



/* Q14 */

select first_name ,
case 
	when account_balance < 1000 then 'low'
	when account_balance between 1000 and 10000 then 'medium'
	else 'high'
end as balance_statuse
from bank_customer_data ;


/*Q15 */
select first_name ,
case 
	when anomaly = 1 then 'şübhəli'
	when anomaly = -1  then 'Normal'
end as anomaly_class
from bank_customer_data ;

/*Q16 */
select first_name ,email
from bank_customer_data 
where email like '%kag.com%';

/*Q17*/

select first_name ,last_name 
from bank_customer_data bcd 
where last_name like '%ell';

/* Q18*/

select first_name ,last_name 
from bank_customer_data bcd 
where last_name ilike 'ra%';

/* Q19 */

select loan_amount,loan_id 
from bank_customer_data
where loan_id is not null and loan_amount is not null;


/* Q20 */

select first_name ,feedback_id
from bank_customer_data
where feedback_id is null;

/* Q21 */

select first_name ,last_credit_card_payment_date
from bank_customer_data 
where last_credit_card_payment_date is null;

/* Q22 */

select first_name ,account_balance 
from bank_customer_data
where account_balance <5000;

/* Q23 */

select transaction_id,transaction_type
from bank_customer_data
where transaction_type = 'Withdrawal';

/* Q24 */

select first_name ,transaction_date
from bank_customer_data
where transaction_date >= current_date - interval '700 days';

/* Q25  */

select first_name ,loan_status,transaction_date
from bank_customer_data
where (extract(year from transaction_date)) = 2023 and loan_status = 'Approved';
/* Q26 */

select first_name ,payment_due_date
from bank_customer_data
where payment_due_date >= current_date - interval '707 days';


/* Q27 */

UPDATE bank_customer_data
SET resolution_status = 'Pending'
WHERE anomaly = '1';



/* Q28 */

delete 
from bank_customer_data 
where account_balance = 0;















