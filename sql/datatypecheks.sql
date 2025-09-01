
-- =============  Checks data types ===========
SELECT *FROM  customers c   ;
-- account
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name = 'accounts';


-- brances 

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name = 'branches';

-- customers

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name = 'customers';

-- loans

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name = 'loans';

-- transactions

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name = 'transactions';


-- REPORT

-- branches table check null values
/* branch_code          character varying ---> VARCHAR(50)
 * branch_name          character varying ---> VARCHAR(100)
 * city                 character varying ---> VARCHAR(100)
 * region               character varying ---> VARCHAR(100)
 * manager_id           character varying ---> VARCHAR(50)
 * open_date            character varying ---> DATE
 * branch_status        character varying ---> VARCHAR()
 * latitude             double presicion
 * longitude            double presicion
 */



-- accounts table checks null values
/* account_id           character varying ---> VARCHAR(50)
 * customer_id          character varying ---> VARCHAR(50)
 * account_type         character varying ---> VARCHAR(50)
 * currency             character varying ---> VARCHAR(50) 
 * balance              real              ---> NUMERIC(15,2)
 * branch_code          character varying ---> VARCHAR(50)
 * account_status       character varying ---> VARCHAR(50)
 * created_at           character varying ---> DATE
 * closed_at            NULL
 */

-- customer table checks null values 
/*customer_id           character varying ---> VARCHAR(100)
 * first_name           character varying ---> VARCHAR(100)
 * last_name            character varying ---> VARCHAR(100)
 * dob                  character varying ---> VARCHAR(50)
 * gender               character varying ---> VARCHAR(50)
 * national_id          character varying ---> VARCHAR(50)
 * email                character varying ---> VARCHAR(50)
 * phone_number         character varying ---> VARCHAR(50)
 * kyc_status           character varying ---> VARCHAR(50)
 * account_open_date    character varying ---> VARCHAR(50)
 * customer_segment     character varying ---> VARCHAR(50)
 * branch_code          character varying ---> VARCHAR(50)
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






