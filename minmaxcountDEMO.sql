USE sakila;
SELECT
	COUNT(*)
FROM
	film f;

USE sakila;
SELECT
	COUNT(*)
FROM
	actor;
    
SELECT
	COUNT(DISTINCT rating)
FROM
	film;


SELECT
	rating,
    COUNT(rating) as "Rating Count"
FROM
	film
GROUP BY
	rating;
    
SELECT
	SUM(length)
FROM
	film;
    
    
SELECT
	MIN(length),
    title
FROM
	film
WHERE
	title LIKE "%g%"
GROUP BY
	title;
    
SELECT
	MAX(length),
    title
FROM
	film
WHERE
	title LIKE "%g%"
GROUP BY
	title;