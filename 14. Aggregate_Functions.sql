SELECT * FROM film;
SELECT MIN(replacement_cost) FROM film;
SELECT MAX(replacement_cost) FROM film;
SELECT MAX(replacement_cost), MIN(replacement_cost) FROM film;
SELECT COUNT(*) FROM film;

SELECT AVG(replacement_cost) FROM film;  
-- AVG() is used to get Average value of a column
  
SELECT ROUND(AVG(replacement_cost),3) FROM film;
/* ROUND(value, no of decimal place) function is used to Round_Off 
   the value having multiple digits after decimal. */