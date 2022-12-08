/*
-- CHALLENGE WITH CLAUSE HAVING
-- we are launching a platinum service for our most loyal customers. We will assign platinum
-- status to customers that have had 40 or more transaction payments. What customer_ids 
-- are eligible for platinum status?
SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40 
*/

-- What are the customer ids of customers who are spent momre than $100 in payment 
-- transaccions with our staff_id member 2?
SELECT customer_id, SUM(amount) 
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100



