DROP TABLE IF EXISTS banks

CREATE TABLE banks(
	bank_id SERIAL PRIMARY KEY,
	bank_name VARCHAR(50),
	bank_routing_number BIGINT

);

SELECT * FROM banks

-- Insert new data
INSERT INTO banks 
(bank_name, bank_routing_number)
VALUES
('Bank of America', 198491827),
('Wells Fargo', 629873495),
('JPMorgan Chase', 2340903984),
('Citigroup', 890123900),
('TD Bank', 905192010),
('Capital One', 184619239),
('Capital One', 184619239);

-- Query the table to return the rows containing "Capital One", and then delete one of the duplicates.
SELECT * FROM banks
WHERE bank_name = 'Capital One'

DELETE FROM banks
WHERE bank_id = 7
select * from banks

--Insert a few more rows of data representing additional banks by adding the bank_name and bank_routing_number of your choice to the banks table.
INSERT INTO banks
(bank_id, bank_name, bank_routing_number)
VALUES 
(88, 'BNP Parbias', 12345)

select * from banks

--Change the name of Citigroup to PNC Bank.
UPDATE banks
SET bank_name = 'PNC bank'
WHERE bank_id = 4

---- Update bank_routing_number for bank_id 2
UPDATE banks
SET bank_routing_number = 1995826182
WHERE bank_id = 2

-- Add a "mortgage_lender" column with the boolean default of true
ALTER TABLE banks
ADD COLUMN mortgage_lender BOOLEAN default true;