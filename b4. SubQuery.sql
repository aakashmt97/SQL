SELECT * FROM film;
SELECT title, rental_rate FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);  -- Sub-query

SELECT film_id, title FROM film
WHERE film_id 
IN	( SELECT inventory.film_id FROM rental         -- Subquery
	  INNER JOIN inventory     -- JOIN
	  ON inventory.inventory_id = rental.inventory_id
	  WHERE return_date BETWEEN '2005-5-29' AND '2005-5-30' )
ORDER BY title;


SELECT cm.customer_id, first_name, last_name 
FROM customer AS cm
WHERE EXISTS (  SELECT * FROM payment AS pm
			 	WHERE pm.customer_id = cm.customer_id
			 	AND pm.amount >11  )
ORDER BY cm.customer_id
