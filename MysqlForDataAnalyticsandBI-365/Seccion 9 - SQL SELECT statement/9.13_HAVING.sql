-- HAVING - exercise
-- Select all employees whose average salary is higher than $120,000 per annum.
-- Hint: You should obtain 101 records.

-- Compare the output you obtained with the output of the following two queries:
-- BAD QUERY
SELECT *, AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;


-- CORRECT QUERY
SELECT *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;


-- HAVING - solution
SELECT
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;

/* When using WHERE instead of HAVING, the output is larger because in the output 
we include individual contracts higher than $120,000 per year. 
The output does not contain average salary values.
Finally, using the star symbol instead of “emp_no” extracts a list that contains all columns 
from the “salaries” table.
*/
