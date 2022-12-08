SELECT 
    *
FROM
    dept_emp;
---------------------------------------------------------------------------

SELECT 
    emp_no, from_date, to_date, COUNT(emp_no) AS Num
FROM
    dept_emp
GROUP BY emp_no
HAVING Num > 1;
---------------------------------------------------------------------------
-- visualize only the period encompassing the last contract of each employee
-- visualizar sólo el período que abarca el último contrato de cada empleado
CREATE OR REPLACE VIEW v_dept_emp_latest_date AS
    SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        dept_emp
    GROUP BY emp_no;
