DROP FUNCTION IF EXISTS f_emp_avg_salary;

DELIMITER $$
CREATE FUNCTION f_emp_avg_salary (p_emp_no INTEGER) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN 

DECLARE v_avg_salary DECIMAL(10,2);

-- declare the average salary to as a variable of the same decimal of 10 and 2
BEGIN
	DECLARE v_avg_salary_2 DECIMAL(10,2);
END;


SELECT AVG(s.salary)
INTO v_avg_salary FROM employees e
JOIN salaries s 
ON e.emp_no = s.emp_no
WHERE e.emp_no = p_emp_no;

RETURN v_avg_salary;
END $$

DELIMITER $$;

-- NO SE PUEDE SELECCIONAR PORQUE NO ES LOCAL
SELECT v_avg_salary;