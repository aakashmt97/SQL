SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;


SELECT payment_id, payment.customer_id, first_name FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;
/* "INNER JOIN" will join only those "customers_id"s which are present in 
   both tables.column.
   Those "customer_id"s which are not present in both the tables.column, 
   will not be included in the result of "INNER JOIN"  */
