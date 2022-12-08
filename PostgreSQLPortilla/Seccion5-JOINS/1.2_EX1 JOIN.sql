-- california sales tax laws have changed and we need to alert out customers to this 
-- through email
-- What are the emails of the customers who live in california?

SELECT email, district AS state
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California'
