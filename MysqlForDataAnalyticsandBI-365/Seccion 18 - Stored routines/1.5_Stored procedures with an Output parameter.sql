USE employees;
DROP PROCEDURE IF EXISTS emp_avg_salary_out;

DELIMITER $$ 
USE employees $$
CREATE PROCEDURE emp_avg_salary_out(in p_emp_no INTEGER, out p_avg_salary DECIMAL(10,2))
BEGIN 
	SELECT 
		AVG(s.salary)
	INTO p_avg_salary
    FROM employees e
    JOIN salaries s
    ON e.emp_no = s.emp_no
    WHERE e.emp_no = p_emp_no;
END $$

DELIMITER $$;

set @p_avg_salary = 0;
call employees.emp_avg_salary_out(11300, @p_avg_salary);
select @p_avg_salary;

