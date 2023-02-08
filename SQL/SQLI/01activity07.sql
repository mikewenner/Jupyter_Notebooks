DROP TABLE IF EXISTS customer

CREATE TABLE customer(
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

-- Create a query to return all female customers.
SELECT * FROM customer
WHERE gender = 'Female'

-- Create a query to return all male customers from New Jersey.
SELECT * FROM customer
WHERE gender = 'Male'
AND state = 'NJ'

-- Create a query to return all male customers from New Jersey or Ohio.
SELECT * FROM customer
WHERE gender = 'Male'
AND state = 'NJ' OR state = 'OH'

-- Create a query to return all female customers from Maryland who are less than 30 years old.
SELECT * FROM customer
WHERE gender = 'Female'
AND state = 'MD'
AND age < 30