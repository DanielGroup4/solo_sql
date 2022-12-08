/* The DELETE Statement – Part II - exercise
Remove the department number 10 record from the “departments” table.
*/
USE employees;
SELECT 
    *
FROM
    departments
ORDER BY dept_no DESC; 

DELETE FROM departments
WHERE
    dept_no = 'd010';

-- Regresando el valor borrado 
ROLLBACK;