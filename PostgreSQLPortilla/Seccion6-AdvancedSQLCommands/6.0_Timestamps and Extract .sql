/*
SELECT EXTRACT(YEAR FROM payment_date) AS my_year
FROM payment
*/

/*
SELECT EXTRACT(MONTH FROM payment_date) AS pay_month
FROM payment
*/

/*
SELECT EXTRACT(QUARTER FROM payment_date) AS pay_quarter
FROM payment
*/

/*
SELECT AGE(payment_date)
FROM payment
*/

/*
SELECT TO_CHAR(payment_date, 'MONTH-YYYY')
FROM payment
-- se puede omitir el dash, es decir, 'MONTH   YYYY'
*/

/*
SELECT TO_CHAR(payment_date, 'mon/dd/YYYY')
FROM payment
*/

SELECT TO_CHAR(payment_date, 'MM/dd/YYYY')
FROM payment
