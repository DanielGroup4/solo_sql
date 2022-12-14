-- find the average salaries of men and women in the company
SELECT 
    e.gender, AVG(s.salary) AS average_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender
ORDER BY average_salary DESC;
