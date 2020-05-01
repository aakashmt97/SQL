SELECT * FROM customer;

SELECT
    CASE
      WHEN (customer_id <= 100) THEN 'Premium'
      WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
      ELSE 'Normal' 
    END AS customer_class,
    customer_id
FROM customer
ORDER BY customer_id;
-- CASE itself acts as Column, hence the "comma" 
-- between "CASE" and "customer_id"


SELECT customer_id,
    CASE customer_id
      WHEN 2 THEN 'Winner'
      WHEN 5 THEN 'Second Place'
      ELSE 'Normal' 
    END AS raffle_results
FROM customer
ORDER BY customer_id;

SELECT * FROM film;

SELECT rental_rate,
    CASE rental_rate
      WHEN 0.99 THEN 1
      ELSE 0
    END
FROM film;


SELECT
     SUM(CASE rental_rate
      WHEN 0.99 THEN 1
      ELSE 0
    END) AS number_of_bargains,

    SUM(CASE rental_rate
      WHEN 2.99 THEN 1
      ELSE 0
    END) AS number_of_regulars,

    SUM(CASE rental_rate
      WHEN 4.99 THEN 1
      ELSE 0
    END) AS premium
FROM film;

