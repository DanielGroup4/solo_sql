SELECT 
    *
FROM
    dept_manager;

-- select the fisrt and last name from the 'Employees' table for the same employee numbers that can be found 
-- in the 'Department Manager' table 
/* -- seleccione el primer nombre y apellido de la tabla 'Empleados' para los mismos 
números de empleados que se pueden encontrar en la tabla 'Manager de departamento'*/ 

SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager dm);
            
            
-- executing the subquery standalone
SELECT 
	dm.emp_no
        FROM
            dept_manager dm;                       
