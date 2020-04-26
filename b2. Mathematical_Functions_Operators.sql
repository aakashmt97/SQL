/* Goto " https://www.postgresql.org/docs/9.5/functions-math.html " for 
   more details abount Mathematical Functions and Operators */

SELECT * FROM film;

-- Calculating percentage of rental_rate vs replacement_cost
SELECT rental_rate/replacement_cost AS division FROM film;
SELECT ROUND(rental_rate/replacement_cost, 3) AS division FROM film;
SELECT ROUND((rental_rate/replacement_cost)*100, 3) AS percentage FROM film;

-- Calculating 10% of replacement_cost
SELECT 0.1 * replacement_cost AS DEPOSIT FROM film
