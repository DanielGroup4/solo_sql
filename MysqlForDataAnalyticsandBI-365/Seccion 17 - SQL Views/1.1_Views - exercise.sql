-- Views - exercise
-- Create a view that will extract the average salary of all managers registered in the database. 
-- Round this value to the nearest cent.
-- Cree una view que extraiga el salario promedio de todos los managers registrados en la base de datos. 
-- Redondee este valor al céntimo más cercano.

/* If you have worked correctly, after executing the view from the “Schemas” section in Workbench, 
you should obtain the value of 66924.27.
Si ha trabajado correctamente, tras ejecutar la vista desde la sección "Esquemas" en Workbench, 
debería obtener el valor de 66924,27 */

CREATE OR REPLACE VIEW v_manager_avg_salary AS
    SELECT 
        ROUND(AVG(salary), 2)
    FROM
        salaries s
            JOIN
        dept_manager m ON s.emp_no = m.emp_no;
