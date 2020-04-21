/* General Challenge */

/* 1. How many payment transactions were greater than $5.00 ? */
SELECT * FROM payment;
SELECT COUNT(*) FROM payment
WHERE amount > 5.00;

/* How many actors have a first name that starts with letter P ? */
SELECT * FROM actor;
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

/* How many unique districts are our customers from ? */
SELECT * FROM address;
SELECT DISTINCT(district) FROM address;
SELECT COUNT(DISTINCT(district)) FROM address;

/* Retrieve the list of names for those distinct districts 
   from the previous question  */
SELECT * FROM address;
SELECT DISTINCT(district)  FROM address;

/* How many films have a rating of R and a replacement cost 
   between $5 and $15 ? */
SELECT * FROM film;
SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

/* How many films have the word Truman somewhere in the title ? */
SELECT COUNT(*) FROM film
WHERE title ILIKE '%Truman%';