-- Challenge 1
/* California sales tax laws have changed and we need to alert
   our customers through email 
   What are emails of the customers who live in California ? */
   
SELECT customer.address_id, district, email  FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';



-- Challenge 2
/* A customer walks in and is a huge fan of the actor "Nick Wahlberg"
   and wants to know which movie he is in.
   Get a list of all the movies "Nick Wahlberg" has been in. */
   
SELECT film_actor.film_id, title, first_name, last_name FROM film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film.film_id = film_actor.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg'
