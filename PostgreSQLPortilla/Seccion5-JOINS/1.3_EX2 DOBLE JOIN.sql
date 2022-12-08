-- a customer walks in and is a huge fan of the actor "Nick Wahlberg" 
-- and wants to know which movie he is in.
-- Get a list of all the movies "Nick Wahlberg" has been in.
--SELECT * FROM actor

SELECT title AS name_movie, first_name, last_name  
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg'
