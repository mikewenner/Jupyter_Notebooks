SELECT *
FROM sales;

-- Return all rows and columns for records with
-- loan amounts less than $300,000
SELECT *
FROM sales
WHERE loan_amount < 300000;

-- Return the average loan amount
SELECT AVG(loan_amount)
FROM sales;

-- Update the loan amount for sales_id 33
UPDATE sales
SET loan_amount = 423212
WHERE sales_id = 33;

-- Add a new boolean column loan_distributed that defaults to True.
ALTER TABLE sales
ADD COLUMN loan_distributed BOOLEAN default true

--Insert a new record into the sales table where the sales_id is 101, the payment_id is 101, the mortgage_id is 2, 
-- the loan_amount is $734544, and the loan_date is 1995-10-05.
INSERT INTO sales
(sales_id, payment_id, mortgage_id, loan_amount, loan_date)
VALUES (101, 101, 2, 734544, '10/5/1995');

-- Delete data
DELETE FROM sales
WHERE sales_id = 72;

select * from sales
