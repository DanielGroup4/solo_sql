USE employees;

COMMIT;


SELECT *
FROM
    employees
WHERE
    emp_no = 999903;


DELETE FROM employees 
WHERE
    emp_no = 999903;

-- assume we deleted Jonathan´s information by mistake 
-- is there a way we can go back, considering that you apply COMMIT statement at the beginning 
-- of the query, you shuld be able to run a ROLLBACK command
ROLLBACK;
