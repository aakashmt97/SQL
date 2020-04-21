-- Challenge
/* An Australian visitor isn't familiar with MPAA movie ratings.
   We want to know  the types of ratings we have in our database.
   What ratings do we have available ? */
SELECT * FROM film;
SELECT DISTINCT(rating) FROM film;
