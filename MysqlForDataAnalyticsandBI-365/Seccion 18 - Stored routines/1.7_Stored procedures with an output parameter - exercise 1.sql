-- Stored procedures with an output parameter - exercise
-- Create a procedure called ‘emp_info’ that uses as parameters the first and the last name of an individual,
-- and returns their employee number.
USE emloyees;
DROP PROCEDURE IF EXISTS emp_info ;

DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_info(in p_first_name VARCHAR(255), in p_last_name VARCHAR(255), out p_emp_no INTEGER)
BEGIN 
	SELECT e.emp_no
    INTO p_emp_no
    FROM employees e
    WHERE e.fisrt_name = p_fist_name AND e.last_name = p_last_name;
END $$

DELIMITER $$; 

		
