/* Compare the average salary of female versus male employees in the entire company until year 2002, 
and add a filter allowing you to see that per each department. */
-- Compare el salario promedio de los empleados femeninos frente a los masculinos en toda la empresa hasta el año 2002, 
-- y añade un filtro que te permita verlo por cada departamento.

SELECT 
    e.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS Avg_salary,
    YEAR(s.from_date) AS Year
FROM
    t_salaries s
        JOIN
    t_employees e ON s.emp_no = e.emp_no
        JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN
    t_departments d ON de.dept_no = d.dept_no
GROUP BY de.dept_no , e.gender , Year
HAVING Year <= 2002
ORDER BY de.dept_no; 
