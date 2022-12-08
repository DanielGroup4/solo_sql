-- Variables - exercise
-- Create a variable, called ‘v_emp_no’, where you will store the output of the procedure 
-- you created in the last exercise.
SET @v_emp_no = 0;
-- Call the same procedure, inserting the values ‘Aruna’ and ‘Journel’ as a first and last name respectively.
CALL emp_info('Aruna', 'Journel', @v_emp_no);
-- Finally, select the obtained output.
SELECT @v_emp_no;