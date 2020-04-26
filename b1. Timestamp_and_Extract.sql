SHOW ALL;              -- Shows every parameters associated with SHOW
SHOW TIMEZONE;     	   -- Shows Time-Zone
SELECT NOW();          -- Shows Date and Time and Time-Zone
SELECT TIMEOFDAY();    -- Shows Date in the form of String
SELECT CURRENT_DATE;   -- Shows only Date
SELECT CURRENT_TIME;   -- Shows Time and Time-Zone

SELECT * FROM payment;

SELECT EXTRACT(YEAR FROM payment_date) FROM payment;
SELECT EXTRACT(MONTH FROM payment_date) AS months FROM payment;
SELECT EXTRACT(YEAR FROM payment_date) AS years, EXTRACT(MONTH FROM payment_date) 
AS months FROM payment;
SELECT EXTRACT(QUARTER FROM payment_date) FROM payment;

SELECT AGE(payment_date) FROM payment;

SELECT TO_CHAR(payment_date, 'MONTH YYYY') FROM payment;
SELECT TO_CHAR(payment_date, 'DAY/MONTH/YYYY') FROM payment;
SELECT TO_CHAR(payment_date, 'dd-mon-YYYY') FROM payment;
