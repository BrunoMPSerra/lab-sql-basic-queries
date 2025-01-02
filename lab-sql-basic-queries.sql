USE sakila;

-- Display all available tables in the Sakila database.

SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer.

SELECT * FROM sakila.actor;

SELECT * FROM sakila.film;

SELECT * FROM sakila.customer;

-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
-- 3.2 List of languages used in films, with the column aliased as language from the language table
-- 3.3 List of first names of all employees from the staff table

SELECT title FROM film;

SELECT * FROM sakila.language;

SELECT name FROM language;

SELECT name AS language FROM language;

SELECT * FROM sakila.staff;

SELECT first_name AS 'First Name' FROM staff;

-- Retrieve unique release years.

SELECT DISTINCT release_year AS 'Release Year' FROM film;

-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.

SELECT * FROM sakila.store;

SELECT store_id FROM store;

SELECT COUNT(*) AS 'Number of Stores' FROM store;

-- 5.2 Determine the number of employees that the company has.

SELECT COUNT(*) AS 'Number of Employees' FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT * FROM film;

SELECT COUNT(*) AS 'Number of Films' FROM film;

SELECT * FROM rental;

SELECT Count(*) AS 'Number of Rented Films' FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT * FROM actor;

SELECT COUNT(DISTINCT last_name) AS 'Count of Unique Last Names' FROM actor;

-- Retrieve the 10 longest films.

SELECT * FROM film;

SELECT * FROM film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT * FROM film;

SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT * FROM film;

SELECT * FROM film
WHERE special_features LIKE '%Behind the Scenes%';