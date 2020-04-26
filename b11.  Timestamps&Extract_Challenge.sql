-- Challenge 1
/* During which months did payments occur ? 
   Format your answer to return back the full month name */

SELECT EXTRACT(MONTH FROM payment_date) FROM payment;
SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH')) FROM payment;

-- Challenge 2
/* How many payments occured on Monday*/
SELECT COUNT(TO_CHAR(payment_date, 'DAY')) as Days FROM payment
WHERE TO_CHAR(payment_date, 'DAY') = 'MONDAY   ';

/* Another Way to get Day-Of-Week using "DOW" in "EXTRACT".
   As it returns Day's number, 
   as SUNDAY = 0, MONDAY = 1,........., SATURDAY = 7 */
SELECT EXTRACT(DOW FROM payment_date) as Days FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;

SELECT COUNT(EXTRACT(DOW FROM payment_date)) as Days FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;
