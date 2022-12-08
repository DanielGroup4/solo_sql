-- obtein a result-set with the data containinig all the department managers in the departments
-- they can be assigned to.
/* -- obtener un conjunto de resultados con los datos que contienen todos los managers 
de los departamentos que pueden ser asignados. */
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;


-- with WHERE dept_no from dept_manager table is different from dept_no departments table  
SELECT 
    dm.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;



-- cross more than two tables
SELECT 
    e.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
        JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;  
