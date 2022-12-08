/*
-- what percentage of the replacement_cost is a rental_rate?
SELECT ROUND(rental_rate/replacement_cost, 2)*100 AS percent_cost
FROM film
*/

SELECT 0.1 * replacement_cost AS deposit
FROM film
