/* Create an SQL stored procedure that will allow you to obtain the average male and female salary 
per department within a certain salary range. Let this range be defined by two values the user can insert
 when calling the procedure.
 Cree un procedimiento almacenado SQL que le permita obtener el salario medio de hombres y mujeres por departamento
 dentro de un determinado rango salarial. Que este rango esté definido por dos valores que el usuario 
 pueda insertar al llamar al procedimiento.
 
 Finally, visualize the obtained result-set in Tableau as a double bar chart. 
 DROP PROCEDURE IF EXISTS filter_salary; */

DELIMITER $$
CREATE PROCEDURE filter_salary (IN p_min_salary FLOAT, IN p_max_salary FLOAT)
BEGIN
SELECT 
    e.gender, d.dept_name, AVG(s.salary) as avg_salary
FROM
    t_salaries s
        JOIN
    t_employees e ON s.emp_no = e.emp_no
        JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN
    t_departments d ON d.dept_no = de.dept_no
    WHERE s.salary BETWEEN p_min_salary AND p_max_salary
GROUP BY d.dept_no, e.gender;
END$$

DELIMITER ;

CALL filter_salary(50000, 90000);