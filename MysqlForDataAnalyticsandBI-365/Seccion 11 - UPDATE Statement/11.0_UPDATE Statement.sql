USE employees;

SELECT *
FROM
    employees
WHERE
    emp_no = 999901;
    
-- updating record
-- substitude the existing values with the new ones indicated in the update statement
UPDATE employees
SET 
	first_name = 'Stella',
    last_name = 'Parker',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE 
	emp_no = 999901;
    
-- lets see if the operation was performed correctly
SELECT * 
FROM employees
ORDER BY emp_no DESC
LIMIT 5
