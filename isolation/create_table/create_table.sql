/* Create table and insert data */

CREATE 
	TABLE customers(
		first_name : varchar(10),
		last_name  : varchar (10),
		account_type : varchar(10),
		balance : decimal(15,2))
		
INSERT INTO customers (first_name, last_name, account_type, balance) VALUES
('Adem', 'Piriyev', 'Savings', 1500.00)