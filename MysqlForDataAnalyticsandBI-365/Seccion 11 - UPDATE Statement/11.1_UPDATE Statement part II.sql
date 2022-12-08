/* for the sake of this exercise, we will change all the departments numbers
and names in this table*/

SELECT *
FROM
    departments_dup
ORDER BY dept_no;

-- it will save the data set as we see it
COMMIT;

-- now if we write the code that updates the department_dup table, 
-- setting a department number to d011 and a department name as Qaulity control we will modify 
-- all the rows of the data table
UPDATE departments_dup
SET 
	dept_no = 'd011',
    dept_name = 'Quality Control';
 
 -- once you execute COMMIT you cannot reverse any change !!
 -- now execute ROLLBACK 
ROLLBACK;

COMMIT;
 