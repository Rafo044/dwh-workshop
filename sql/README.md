-- 
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
