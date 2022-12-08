/*
-- lets go ahead and calculate or return back the films that have a rental rate
-- that is higher than the average rental for all the films
SELECT title, rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film)
*/

/*
-- unir film_id de la tabla inventory
SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30'
*/

/*
SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id
*/

/*
-- EXISTIS OPERATOR: lets imagine we wanted to find customers who have at least
-- one payment whose amount is greater than 11, and we actually want to grab
-- the fist name and last name of those customers.
-- Imaginemos que queremos encontrar clientes que tengan al menos un pago 
-- cuyo importe sea superior a 11, y que queremos obtener el nombre y el apellido
-- de esos clientes.
SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS 
(SELECT * FROM payment AS p
 WHERE p.customer_id = c.customer_id
AND amount > 11)
*/

-- ahora simplemente lo opuesto solo se modifica NOT EXISTS 
SELECT first_name, last_name
FROM customer AS c
WHERE NOT EXISTS 
(SELECT * FROM payment AS p
 WHERE p.customer_id = c.customer_id
AND amount > 11)