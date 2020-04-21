-- Challenge 1
/* A customer forgot their wallet at our store. We need to track down
   their email to inform them. 
   What is the email of the customer with the name Nancy Thomas ? */


SELECT * FROM customer;
SELECT DISTINCT(first_name), (last_name), (email) FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

-- Challenge 2
/* A Customer wants to know what the movie "Outlaw Hanky" is about.
   Could you give them the description for the movie "Outlaw Hanky" ? */

SELECT DISTINCT(title), (description) FROM film
WHERE title = 'Outlaw Hanky';

-- Challenge 3
/* A customer is late on their movie return and we've mailed them a 
   letter to their address at "259 Ipoh Drive". We should also call 
   them on the phone to let the know
   Can you get the phone number for the customer who lives at '259 ipoh Drive' */

SELECT * FROM address;
SELECT DISTINCT(address), (phone) FROM address
WHERE address = '259 Ipoh Drive';
