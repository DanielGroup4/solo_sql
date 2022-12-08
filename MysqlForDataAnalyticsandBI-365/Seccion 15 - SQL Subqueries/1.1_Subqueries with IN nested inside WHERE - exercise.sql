/* SQL Subqueries with IN nested inside WHERE - exercise
Extract the information about all department managers who were hired between the 1st of January 1990 
and the 1st of January 1995. */
/*Extraiga la información sobre todos los directores de departamento que fueron contratados 
entre el 1 de enero de 1990 y el 1 de enero de 1995.*/
SELECT 
    *
FROM
    dept_manager
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            employees
        WHERE
            hire_date BETWEEN '1990-01-01' AND '1995-01-01');
	
    SELECT * FROM dept_manager;
