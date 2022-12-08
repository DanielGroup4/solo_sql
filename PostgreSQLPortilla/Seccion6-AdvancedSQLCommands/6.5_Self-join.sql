-- find all the pairs of films that have lenght; if we take a look at the film table
-- encontrar todos los pares de películas que tienen la misma longitud; 
-- si echamos un vistazo a la tabla de películas
/*
SELECT title, length
FROM film
-- hagamos de cuenta que tenemos dos tablas
*/

SELECT f1.title, f2.title, f1.length
FROM film AS f1
INNER JOIN film AS f2 
ON
f1.film_id != f2.film_id
AND f1.length = f2.length