SELECT COUNT(*) FROM payment
WHERE amount BETWEEN 8 AND 9;

SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

/* As all the payment is done on 14th, so if I give the range
   betwee 1st and 14th as given in below statement, then this 
   will not give the proper answer because the Postgre timeline
   limits the range upto 0:00 hr of 14th instead of 24:00 hr mark.   */
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-14';
