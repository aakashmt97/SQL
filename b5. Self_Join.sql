SELECT * FROM film;

SELECT f1.title, f2.title, f1.length
FROM film AS f1
JOIN film AS f2
ON f1.length = f2.length
ORDER BY f1.title;
