BEGIN ;


UPDATE customers
SET balance = balance - 1000
WHERE first_name = 'Adem';


COMMIT ;

SELECT * FROM customers  ;

BEGIN ;

UPDATE customers
SET balance = balance - 35000
WHERE first_name = 'Adem';



SELECT * FROM customers;