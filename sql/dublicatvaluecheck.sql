
-- ==========  Dublicate value checks ============
/* Duplicate values matter only in columns that should be unique.
 *  For example, it is okay if the balance column has duplicates, 
 * but the card number column must not have duplicates. 
 *I also ran queries on the columns where duplicates are a problem.
*/


-- accounts 

SELECT COUNT(DISTINCT account_id),COUNT(account_id)
FROM accounts;

-- branches 

SELECT COUNT(DISTINCT branch_code),COUNT(branch_code ),
	   COUNT(DISTINCT branch_name),COUNT(branch_name )
FROM branches;


-- customers

SELECT COUNT(DISTINCT customer_id),COUNT(customer_id  ),
       COUNT(DISTINCT first_name),COUNT(first_name  ),
       COUNT(DISTINCT last_name),COUNT(last_name  )
FROM customers;


-- loans 

SELECT COUNT(DISTINCT loan_id),COUNT(loan_id )
FROM loans;

-- transactions

SELECT COUNT(DISTINCT transaction_id),COUNT(transaction_id )
FROM transactions;







