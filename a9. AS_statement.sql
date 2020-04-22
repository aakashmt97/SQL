SELECT COUNT(amount) FROM payment;

-- Using "AS" statement
SELECT COUNT(amount) AS num_transactions FROM payment;

-- Using "*" instead of any column name
SELECT COUNT(*) AS num_transactions FROM payment;

SELECT customer_id, SUM(amount) AS total_spents   
/* "AS" statement is used just after the Column/Function result,
   whose name needs to be changed.  */
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;
/* Since the "AS" statement gets executed at the very end of query,
   then here in "HAVING" or "WHERE" statment, column/Function name which needs 
   to be changed should have its original name instead of 
   new_name in "AS" statement.
   i.e  In "HAVING" or "WHERE" or any Filtering/Comparison statement, 
   "SUM(amount)" should be written instead of "total_spents".
   "HAVING total_spents > 100" will give error  */

-- Example 2
SELECT customer_id, amount AS new_name   
/* "AS" statement is used just after the Column/Function result,
   whose name needs to be changed.  */
FROM payment
WHERE amount > 2;    -- "WHERE new_name > 2" will give error
 
