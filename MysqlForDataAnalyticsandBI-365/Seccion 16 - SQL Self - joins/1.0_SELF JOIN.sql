/* from the emp_manager table, extract the record data only of those employees who are managers as well
De la tabla emp_manager, extraer los datos de los registros sólo de aquellos empleados que también son managers */

SELECT 
    *
FROM
    emp_manager
ORDER BY emp_manager.emp_no DESC;

-------------------------------------------------------------------------------
SELECT DISTINCT
    e1.*
FROM
    emp_manager e1
        JOIN
    emp_manager e2 ON e1.emp_no = e2.manager_no;
    
--------------------------------------------------------------------------------
SELECT DISTINCT
    e1.*
FROM
    emp_manager e1
        JOIN
    emp_manager e2 ON e1.emp_no = e2.manager_no
WHERE
    e2.emp_no IN (SELECT 
            manager_no
        FROM
            emp_manager);
    
    
    


