/* Another example of using COALESCE() - exercise 2
Modify the code obtained from the previous exercise in the following way. 
Apply the IFNULL() function to the values from the first and second column, 
so that ‘N/A’ is displayed whenever a department number has no value, 
and ‘Department name not provided’ is shown if there is no value for ‘dept_name’.*/
SELECT
    dept_no,
    dept_name,
    IFNULL(dept_no, 'N/A' ) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;
