-- Challenge 1
/* We want to reward our first 10 paying customers.
   What are the customer ids of the first 10 customer who created a payment ?  */

SELECT customer_id, payment_date FROM payment
ORDER BY payment_date ASC
LIMIT 10;

-- Challenge 2
/* A customer wants to quickly rent a video to watch over 
   their short lunch break.
   What are the titles of the 5 shortest (in the lenghth of runtime) 
   movies ?  */

SELECT title, length FROM film
ORDER BY length ASC, title ASC
LIMIT 5;

-- Challenge 3
/* If the previous customer can watch any movie that is 50 minutes
   or less in run time, how many  options does she have ?  */

SELECT COUNT(title) FROM film
WHERE length <= 50;
