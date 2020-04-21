-- "COUNT()" is used to count the number of rows in the table for any coloum

SELECT * FROM payment;
SELECT COUNT(*) FROM payment;          -- result = 14596
SELECT COUNT(amount) FROM payment;     -- result = 14596

-- Let say, we need to know different unique rates mentioned in the "amount" column
SELECT DISTINCT(amount) FROM payment;           
SELECT COUNT(DISTINCT(amount)) FROM payment;  -- result = 19
