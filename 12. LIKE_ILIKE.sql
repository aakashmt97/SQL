-- All name that begin with 'A', WHERE name LIKE 'A%'
-- All name that end with 'a', WHERE name LIKE '%a'
-- To find the "customer_name" starting with "J" in customer table
SELECT * FROM customer
WHERE first_name LIKE 'J%';

SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%';

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';   -- Using "AND"

-- Since LIKE is Case-Sensitive, so use ILIKE for Case-Insensitive
SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';

SELECT * FROM customer
WHERE first_name LIKE '%er%';

SELECT COUNT(*) FROM customer
WHERE first_name LIKE '%er%';

SELECT * FROM customer
WHERE first_name LIKE '_her%';

SELECT * FROM customer
WHERE first_name NOT LIKE '_her%';

SELECT COUNT(*) FROM customer
WHERE first_name NOT LIKE '_her%';

SELECT * FROM customer
WHERE first_name NOT ILIKE 'j%' AND last_name NOT ILIKE 's%';

SELECT COUNT(*) FROM customer
WHERE first_name NOT ILIKE 'j%' AND last_name NOT ILIKE 's%';

SELECT * FROM customer
WHERE first_name ILIKE 'a%' AND last_name NOT ILIKE 'b%'
ORDER BY last_name