-- IFNULL(expression_1, expression_2)
-- returns the fist of the two indicated values if the data value found in the table is not null(no vacio)
-- and returns the second value if there is a null value (valor vacio) 
-- prints the returned value in the column of the output
SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department name not provided') as dept_name
FROM
    departments_dup;


-- COALESCE()
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    departments_dup
ORDER BY dept_no ASC;
