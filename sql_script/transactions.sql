/* Q1 */


BEGIN ;

INSERT INTO customers (first_name, last_name, account_type, balance) VALUES
('Adem', 'Piriyev', 'Savings', 1500.00)

UPDATE customers
SET balance = balance + 1000
WHERE first_name = 'Adem';

SELECT *FROM customers;


COMMIT ;

/* Q1 */

BEGIN ;
UPDATE customers
SET balance = balance + 1000
WHERE first_name = 'Adem';

COMMIT;

SELECT * FROM customers  ;


BEGIN ;


UPDATE customers
SET balance = balance + 1000
WHERE first_name = 'Adem';

UPDATE customers
SET balance = balance - 2000
WHERE first_name = 'Adem';

UPDATE customers
SET balance = balance - 1000
WHERE first_name = 'Adem';

SELECT * FROM customers;

COMMIT ;





