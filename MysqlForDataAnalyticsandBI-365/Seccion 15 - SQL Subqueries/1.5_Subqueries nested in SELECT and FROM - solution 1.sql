/* SQL Subqueries nested in SELECT and FROM - exercise 1
Starting your code with “DROP TABLE”, create a table called “emp_manager” 
(emp_no – integer of 11, not null; dept_no – CHAR of 4, null; manager_no – integer of 11, not null). 

Comenzando su código con "DROP TABLE", cree una tabla llamada "emp_manager" 
(emp_no - entero de 11, no null; dept_no - CHAR de 4, null; manager_no - entero de 11, no null). */
DROP TABLE IF EXISTS emp_manager;

CREATE TABLE emp_manager
(
	emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    manager_no INT(11) NOT NULL
 );
 
 -- check new table
 SELECT 
    *
FROM
    emp_manager;