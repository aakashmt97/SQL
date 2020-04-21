SELECT * FROM payment
WHERE amount IN (0.99, 0.98, 1.99)
ORDER BY amount;

SELECT COUNT(*) FROM payment
WHERE amount IN (0.99, 0.98, 1.99);

SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99, 0.98, 1.99);

SELECT * FROM customer      
WHERE first_name IN ('John', 'Jake', 'Julie');

SELECT * FROM customer
WHERE first_name NOT IN ('John', 'Jake', 'Julie', 'Jared', 'Mary')
