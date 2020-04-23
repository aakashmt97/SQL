SELECT * FROM film;
SELECT * FROM inventory;

SELECT inventory.film_id, film.film_id, title, inventory_id, store_id FROM film
RIGHT JOIN inventory
ON film.film_id = inventory.film_id;

SELECT film.film_id, title, inventory_id, store_id FROM film
RIGHT JOIN inventory
ON film.film_id = inventory.film_id
WHERE film.film_id IS null
