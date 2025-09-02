-- 

## Dublicates value 

Duplicate values matter only in columns that should be unique.
 For example, it is okay if the balance column has duplicates, but the card number column must not have duplicates.
 I also ran queries on the columns where duplicates are a problem.

-- REPORT

There are no duplicate values ​​in any of the tables.




## Data Type checks 

-- REPORT
```
-- branches table check null values
/* branch_code          character varying ---> VARCHAR(50)
 * branch_name          character varying ---> VARCHAR(100)
 * city                 character varying ---> VARCHAR(100)
 * region               character varying ---> VARCHAR(100)
 * manager_id           character varying ---> VARCHAR(50)
 * open_date            character varying ---> DATE
 * branch_status        character varying ---> VARCHAR()
 * latitude             float8            ---> double presicion
 * longitude            float8            ---> double presicion
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
```








## REPORT 

This report includes checking for null values. I have done general purpose checks, 
mainly finding 'null','NULL','Null' ,' ',NULL values ​​and counting them.

##  RESULT

```markdown
/* branches table check null values 
 * branch_code          0
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
```
