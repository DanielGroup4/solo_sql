-- return the first 100 rows from the employees --------------
USE employees;

DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN 
		SELECT * FROM employees
		LIMIT 100;
END $$

DELIMITER ;

call employees.select_employees();

-- the way to call the same query before
call select_employees();	

