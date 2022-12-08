/*-- we have 2 staff members, with staff IDs 1 and 2. we want to give a bonus to the
-- staff member that handled the most payments (most in terms fo number of payments
-- processed, not total dolar amount).
SELECT staff_id, COUNT(payment_id) 
from payment
GROUP BY staff_id
*/

/*
-- how many payments did each staff member handle and who gets the bonus?
SELECT staff_id, SUM(amount) 
FROM payment
GROUP BY staff_id
ORDER BY SUM(amount) DESC
*/
/*
-- corporate HQ is conducting a study on the relationship between replacement cost
-- and movie MPAA rating (e.g G,PG,R,etc.), so what is the average replacement cost
-- per MPAA rating?.   Note: you may need to expand the AVG column to view correct results
SELECT rating, ROUND(AVG(replacement_cost),2) 
FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost) DESC 
*/

-- We are running a promotion to reward out top 5 customers with coupons. 
-- What are the customer ids of the top 5 customers by total spend?
SELECT customer_id, SUM(amount) 
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5




