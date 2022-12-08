-- Task 1 - Text
/* Create a visualization that provides a breakdown between the male and female employees working in the company 
each year, starting from 1990. */
/* Cree una visualización que proporcione un desglose entre los empleados masculinos y femeninos 
que trabajan en la empresa cada año, a partir de 1990. 
*/

SELECT 
    YEAR(de.from_date) AS calendar_year,
    e.gender,
    COUNT(e.emp_no) AS num_of_employees
FROM
    t_employees e
        JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
WHERE
    de.from_date > '1990-01-01'
GROUP BY gender , calendar_year
ORDER BY calendar_year DESC;


-- OTHER SOLUTION --------------------------------------------------------------
/*
SELECT 

    YEAR(d.from_date) AS calendar_year,
    e.gender,    
    COUNT(e.emp_no) AS num_of_employees

FROM     
     t_employees e         
          JOIN    
     t_dept_emp d ON d.emp_no = e.emp_no

GROUP BY calendar_year , e.gender 

HAVING calendar_year >= 1990;
*/
