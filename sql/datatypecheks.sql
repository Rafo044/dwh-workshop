
-- =============  Checks data types ===========
SELECT *FROM transactions t  ;
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
/* customer_id           character varying ---> VARCHAR(50)
 * first_name           character varying ---> VARCHAR(100)
 * last_name            character varying ---> VARCHAR(100)
 * dob                  character varying ---> TIMESTAMP
 * gender               character varying ---> VARCHAR(3)
 * national_id          character varying ---> VARCHAR(15)
 * email                character varying ---> VARCHAR(100)
 * phone_number         character varying ---> VARCHAR(50)
 * kyc_status           character varying ---> VARCHAR(50)
 * account_open_date    character varying ---> DATE
 * customer_segment     character varying ---> VARCHAR(50)
 * branch_code          character varying ---> VARCHAR(50)
 */


-- loans table checks null values

/* loan_id              character varying ---> VARCHAR(50)
 * customer_id          character varying ---> VARCHAR(50)
 * loan_type            character varying ---> VARCHAR(50)
 * principal_amount     FLOAT4            ---> numeric(10,2)
 * interest_rate        FLOAT4            ---> numeric(2,2)
 * loan_term_months     İNT4              ---> İNT
 * start_date           character varying ---> DATE
 * end_date             character varying ---> DATE
 * payment_frequency    character varying ---> VARCHAR(50)
 * loan_status          character varying ---> VARCHAR(50)
 * past_due_amount      FLOAT4            ---> NUMERİC(10,2)
 */

-- transactions table checks null values

/* transaction_id        character varying ---> VARCHAR(50)
 * account_id            character varying ---> VARCHAR(50)
 * transaction_type      character varying ---> VARCHAR(50) 
 * amount                FLOAT4            ---> NUMERİC(10,2)
 * currency              character varying ---> VARCHAR(50)
 * transaction_date      character varying ---> DATE
 * branch_code           character varying ---> VARCHAR(50)
 * merchant_category     character varying ---> VARCHAR(50)
 * status                character varying ---> VARCHAR(50)
 */








