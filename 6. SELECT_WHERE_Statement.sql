SELECT * FROM customer
WHERE first_name = 'Jared';

-- In the "film" table, find the "rental_rate" above 4 $
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99 AND rating = 'R';

-- Call the "title" which has following condition using "AND"
SELECT title FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99 AND rating = 'R';

-- Count the number of Rows which have following conditions
SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99 AND rating = 'R';

-- the following conditions using "OR"
SELECT COUNT(*) FROM film
WHERE rating = 'PG-13' OR rating = 'R';

SELECT * FROM film
WHERE rating != 'R';
