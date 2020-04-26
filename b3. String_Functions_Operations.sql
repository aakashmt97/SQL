/* Goto " https://www.postgresql.org/docs/9.1/functions-string.html " 
   for more details of String Functions and Operations */

SELECT LENGTH(first_name), LENGTH(last_name) FROM customer;
SELECT LENGTH(first_name) AS firstname, LENGTH(last_name) AS lastname FROM customer;

SELECT first_name || '   ' || last_name FROM customer;
SELECT first_name || '   ' || last_name AS full_name FROM customer;
SELECT upper(first_name) || '   ' || upper(last_name) FROM customer;
SELECT lower(first_name) || lower(last_name) || '@gmail.com' FROM customer;

-- left(string text, no_of_initial_char_to_be_mentioned)
SELECT lower(left(first_name, 2)) || lower(left(last_name, 2)) || '@gmail.com'
AS custom_email
FROM customer;
