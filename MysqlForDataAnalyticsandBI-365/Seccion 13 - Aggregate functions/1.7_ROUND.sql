-- which is the average annual salary the companys employee received?
-- ¿cuál es el salario medio anual que recibe el empleado de la empresa?
SELECT 
    ROUND(AVG(salary), 2)
FROM
    salaries;
   
   
-- Round the average amount of money spent on salaries for all contracts that 
-- started after the 1st of January 1997 to a precision of cents.
SELECT
    ROUND(AVG(salary), 2)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    