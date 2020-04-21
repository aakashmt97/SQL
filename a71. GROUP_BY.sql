SELECT * FROM payment;

SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY customer_id;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;
-- ORDER BY SUM(amount) DESC;

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;
/* Here COUNT() is giving the No Of Transactions per Group */

SELECT customer_id, SUM(amount), staff_id FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id, staff_id;

SELECT * FROM payment;
SELECT DATE(payment_date) FROM payment
GROUP BY DATE(payment_date)
ORDER BY DATE(payment_date);
/* Here "DATE()" is used to obtain only Date from 
   Timestamps column of "payment_date"  */
