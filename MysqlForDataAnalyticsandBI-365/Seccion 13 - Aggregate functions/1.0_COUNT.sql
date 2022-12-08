SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;


SELECT 
    COUNT(salary)
FROM
    salaries;


-- how many employee start dates are in the database?
SELECT 
    COUNT(DISTINCT from_date) AS 'number of employees with start dates'
FROM
    salaries;
     






