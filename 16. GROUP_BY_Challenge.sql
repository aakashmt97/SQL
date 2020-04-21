-- Challenge 1
/* We have two staff members, with staff IDs 1 & 2.
   We want to give bonus to the staff memeber that handled 
   the most payment(in terms of number of payments processed, not
   total dollar amount).
   How many payments did each staff member handle and who gets bonus ? */
SELECT * FROM payment;
SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id
ORDER BY staff_id ASC;

-- Challenge 2
/* Corporate HQ is conducting a study on the relationship between 
   replacement cost and a movie MPAA rating (eg: G, PG, R, etc).
   What is the average replacement cost per MPAA rating ? */
SELECT * FROM film;
SELECT rating, ROUND(AVG(replacement_cost), 3) FROM film
GROUP BY rating
ORDER BY rating;

-- Challenge 3
/* We are running a promotion to reward our top 5 customers with coupons. 
   What are the customer ids of the top 5 customer by total spend ? */
SELECT * FROM payment;
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;