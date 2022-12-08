-- lets all the values in the salaries column to see how much money the firm spent on salaries
-- todos los valores de la columna de salarios para ver cuánto dinero gastó la empresa en salarios
SELECT 
    SUM(salary)
FROM
    salaries;

-- What is the total amount of money spent on salaries for all contracts starting after 
-- the 1st of January 1997?
SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    to_date > '1997-01-01'
