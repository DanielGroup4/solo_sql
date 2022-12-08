/*
-- During which months did payments occur? (en que meses se hicieron los pagos?)
SELECT 
DISTINCT(TO_CHAR(payment_date, 'MONTH') ) 
FROM payment
*/ 


-- How many payments occurred on a monday? 
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date)= 1
-- dow = day of week, where sunday is 0
