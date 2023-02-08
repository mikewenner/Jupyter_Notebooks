DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS banks;
CREATE TABLE payments (
  payment_id SERIAL PRIMARY KEY,
  bank_number BIGINT,
  bank_routing_number BIGINT,
  customer_id INT
);
CREATE TABLE banks (
  bank_id SERIAL PRIMARY KEY,
  bank_name VARCHAR(50),
  bank_routing_number BIGINT
);

select * from payments

-- Return all payment records with matching bank routing numbers in the banks table.
-- inner join payments a (becaus want payment records), banks b
SELECT 
*
FROM payments as a
INNER JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

--Return all payment records regardless if there is a matching bank routing number in the banks table.
SELECT 
*
FROM payments as a
LEFT JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

--Return all bank records regardless if there is a matching bank routing number in the payments table.
SELECT 
*
FROM payments as a
RIGHT JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

--Return all records from both tables regardless if there is a matching bank routing number in either table.
SELECT 
*
FROM payments as a FULL
OUTER JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

--adding customer table
DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30),
  gender VARCHAR(30),
  age INT,
  address VARCHAR(50),
  city VARCHAR(50),
  state CHAR(2),
  zip_code CHAR(5)
);

select * from customer

--Then, join the customer table with the payments and banks tables to find the customers who have Wells Fargo bank accounts. 
--Return the following columns: payment_id, bank_number, bank_routing_number, bank_name, first_name, last_name
SELECT
a.payment_id,
a.bank_number,
a.bank_routing_number,
b.bank_name,
c.first_name,
c.last_name
FROM payments as a
INNER JOIN banks as b ON a.bank_routing_number = b.bank_routing_number
INNER JOIN customer as c ON a.customer_id = c.customer_id;




