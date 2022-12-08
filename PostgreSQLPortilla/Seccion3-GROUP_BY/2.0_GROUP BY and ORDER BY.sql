/*
-- GRUOP BY
select customer_id from payment
group by customer_id
order by customer_id
*/

/*
SELECT customer_id , SUM(amount) 
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
*/

/*
-- NUM OF TRANSACTIONS
SELECT customer_id , COUNT(amount) 
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC
*/

/*
SELECT customer_id, staff_id, SUM(amount) 
FROM payment
GROUP BY customer_id, staff_id 
ORDER BY customer_id 
*/

/*
SELECT customer_id, staff_id, SUM(amount) 
FROM payment
GROUP BY customer_id, staff_id 
ORDER BY SUM(amount) 
*/

/*
SELECT DATE(payment_date)  
FROM payment
GROUP BY payment_date
*/

SELECT DATE(payment_date), SUM(amount)  
FROM payment
GROUP BY payment_date
ORDER BY SUM(amount) DESC