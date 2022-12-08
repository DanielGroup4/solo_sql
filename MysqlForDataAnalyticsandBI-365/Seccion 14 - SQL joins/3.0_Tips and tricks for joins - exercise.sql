-- Tips and tricks for joins - exercise
/* How many male and how many female managers do we have in the ‘employees’ database? */
SELECT 
    e.gender, COUNT(dm.emp_no) AS num_employees
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY gender;

