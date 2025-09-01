-- ==============  NULL Data checks   ================ 

-- Functions

CREATE OR REPLACE FUNCTION isnullnumber(a anyelement)
RETURNS boolean AS $$
DECLARE 
	b TEXT;
BEGIN
	b:= a::TEXT ;
	
    IF b IS NULL OR trim(b) = '' OR lower(b) = 'null' THEN
        RETURN TRUE;
    END IF;

    BEGIN
        PERFORM b::numeric;
    EXCEPTION WHEN invalid_text_representation THEN
        RETURN TRUE; -- rəqəm deyil
    END;

    RETURN FALSE;
END;
$$ LANGUAGE plpgsql IMMUTABLE;



CREATE OR REPLACE FUNCTION isnullstr(a anyelement)
RETURNS boolean AS $$
DECLARE
	a TEXT;
BEGIN 
	IF a IS NULL THEN 
    	RETURN TRUE;
	END IF;


	IF pg_typeof(a) = 'text'::regtype
	OR pg_typeof(a) = 'character varying'::regtype THEN
		IF TRIM(a::TEXT)='' OR LOWER(a::TEXT)='null' THEN
			RETURN TRUE;
		END IF;
	
	END IF;

	RETURN FALSE;

END;
$$ LANGUAGE plpgsql IMMUTABLE;

-- isnullstr and isnullnumber default return true

--Check the functions

SELECT isnullnumber(NULL);
SELECT isnullnumber('');   
SELECT isnullnumber('123');  
SELECT isnullnumber(12.34);


-- branches 

SELECT * FROM branches;

SELECT COUNT(b.branch_code)
FROM branches b 
WHERE isnullstr(b.branch_code );

SELECT COUNT(b.branch_name)
FROM branches b 
WHERE isnullstr(b.branch_name );

SELECT COUNT(*)
FROM branches b
WHERE isnullstr(b.branch_status );

SELECT COUNT(*)
FROM branches b
WHERE isnullstr(b.city );

SELECT COUNT(*)
FROM branches b
WHERE isnullstr(b.region );

SELECT COUNT(*)
FROM branches b
WHERE isnullstr(b.manager_id );

SELECT COUNT(*)
FROM branches b
WHERE isnullstr(b.open_date );

SELECT COUNT(*)
FROM branches b
WHERE isnullnumber(b.latitude );

SELECT COUNT(*)
FROM branches b
WHERE isnullnumber(b.longitude );


-- accounts
SELECT *
FROM accounts a;

SELECT COUNT(*)
FROM accounts a
WHERE isnullstr(a.account_id  );

SELECT COUNT(*)
FROM accounts a
WHERE isnullstr(a.customer_id   );

SELECT COUNT(*)
FROM accounts a
WHERE isnullstr(a.account_type   );

SELECT COUNT(*)
FROM accounts a
WHERE isnullstr(a.account_status  );


SELECT COUNT(*)
FROM accounts a
WHERE isnullstr(a.currency  );

SELECT COUNT(*)
FROM accounts a
WHERE isnullstr(a.branch_code   );

SELECT COUNT(*)
FROM accounts a
WHERE isnullstr(a.account_id  );


SELECT COUNT(*)
FROM accounts a
WHERE isnullstr(a.created_at  );

SELECT COUNT(*)
FROM accounts a
WHERE isnullstr(a.closed_at  );

SELECT COUNT(*)
FROM accounts a
WHERE isnullnumber(a.balance  );

-- customers

SELECT * 
FROM customers;

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.customer_id   );

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.first_name    );

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.last_name   );

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.dob   );

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.gender   );

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.national_id);

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.email );

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.phone_number );

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.kyc_status );

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.customer_segment);

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.branch_code);

SELECT COUNT(*)
FROM customers c  
WHERE isnullstr(c.account_open_date );


-- loans
SELECT *
FROM loans;


SELECT COUNT(*)
FROM loans l
WHERE isnullstr(l.loan_id);

SELECT COUNT(*)
FROM loans l
WHERE isnullstr(l.customer_id);

SELECT COUNT(*)
FROM loans l
WHERE isnullstr(l.loan_type);

SELECT COUNT(*)
FROM loans l
WHERE isnullnumber(l.principal_amount);

SELECT COUNT(*)
FROM loans l
WHERE isnullnumber(l.interest_rate);

SELECT COUNT(*)
FROM loans l
WHERE isnullnumber(l.loan_term_months);

SELECT COUNT(*)
FROM loans l
WHERE isnullstr(l.start_date );

SELECT COUNT(*)
FROM loans l
WHERE isnullstr(l.end_date);

SELECT COUNT(*)
FROM loans l
WHERE isnullstr(l.payment_frequency );

SELECT COUNT(*)
FROM loans l
WHERE isnullstr(l.loan_status );

SELECT COUNT(*)
FROM loans l
WHERE isnullnumber(l.past_due_amount );


-- transactions
SELECT *
FROM transactions t ;


SELECT COUNT(*)
FROM transactions t
WHERE isnullstr(t.transaction_id  );

SELECT COUNT(*)
FROM transactions t
WHERE isnullstr(t.account_id );

SELECT COUNT(*)
FROM transactions t
WHERE isnullstr(t.transaction_type  );

SELECT COUNT(*)
FROM transactions t
WHERE isnullnumber(t.amount  );


SELECT COUNT(*)
FROM transactions t
WHERE isnullstr(t.currency  );


SELECT COUNT(*)
FROM transactions t
WHERE isnullstr(t.transaction_date   );

SELECT COUNT(*)
FROM transactions t
WHERE isnullstr(t.branch_code   );

SELECT COUNT(*)
FROM transactions t
WHERE isnullstr(t.merchant_category);

SELECT COUNT(*)
FROM transactions t
WHERE isnullstr(t.status );


-- REPORT 

-- branches table checks null values
/* branch_code          0
 * branch_name          0
 * city                 0 
 * region               0
 * manager_id           0
 * open_date            0
 * branch_status        0
 * latitude             0
 * longitude            0
 */



-- accounts table checks null values
/*account_id
 * customer_id          0
 * account_type         0
 * currency             0 
 * balance              0
 * branch_code          0
 * account_status       0
 * created_at           0
 * closed_at            71250
 */

-- customer table checks null values 
/*customer_id           0
 * first_name           0
 * last_name            0
 * dob                  0
 * gender               0
 * national_id          0
 * email                0
 * phone_number         0
 * kyc_status           0
 * account_open_date    0
 * customer_segment     0
 * branch_code          0
 */


-- loans table checks null values

/* loan_id              0
 * customer_id          0
 * loan_type            0
 * principal_amount     0
 * interest_rate        0
 * loan_term_months     0
 * start_date           0
 * end_date             0
 * payment_frequency    0
 * loan_status          0
 * past_due_amount      0
 */

-- transactions table checks null values

/* transaction_id        0
 * account_id            0
 * transaction_type      0 
 * amount                0
 * currency              0
 * transaction_date      0
 * branch_code           0
 * merchant_category     0
 * status                0
 */


























































