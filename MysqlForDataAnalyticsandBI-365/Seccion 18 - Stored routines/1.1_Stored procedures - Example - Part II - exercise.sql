-- Stored procedures - Example - Part II - exercise
-- Create a procedure that will provide the average salary of all employees.
-- Then, call the procedure.
DROP PROCEDURE IF EXISTS average_salary;

DELIMITER $$
CREATE PROCEDURE average_salary()
BEGIN 
		SELECT AVG(salary) AS salary_avg
        FROM salaries;
END $$

DELIMITER ;


call employees.average_salary();
call average.salary();
call average_salary;
call employees.average_salary;
