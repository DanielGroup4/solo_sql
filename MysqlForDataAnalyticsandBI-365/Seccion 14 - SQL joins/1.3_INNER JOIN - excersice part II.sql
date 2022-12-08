-- Extract a list containing information about all managers’ employee number, 
-- first and last name, department number, and hire date. 
-- Extraer una lista que contenga información sobre el número de empleado de todos los gerentes, 
-- nombre y apellidos, número de departamento y fecha de contratación. 
SELECT 
    dm.emp_no,
    dm.dept_no,
    e.first_name,
    e.last_name,
    e.hire_date
FROM
    dept_manager_dup dm
        INNER JOIN
    employees e ON dm.emp_no = e.emp_no
ORDER BY emp_no;
 