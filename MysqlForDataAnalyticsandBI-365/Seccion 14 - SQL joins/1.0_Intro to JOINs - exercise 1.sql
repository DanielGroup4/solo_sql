/* use CHANGE COLUMN to change the ‘dept_no’ and ‘dept_name’ columns to NULL.*/
ALTER TABLE departments_dup
CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;


-- checking ----------------------------------------------------------------
SELECT *
FROM
    departments_dup
ORDER BY dept_no;
-- -------------------------------------------------------------------------

-- Then, insert a record whose department name is “Public Relations”.
INSERT INTO departments_dup (dept_name)
VALUES ('Public Relations');


-- Delete the record(s) related to department number two. 
DELETE FROM departments_dup
WHERE
    dept_no = 'd002'; 

    
-- Insert two new records in the “departments_dup” table.
-- Let their values in the “dept_no” column be “d010” and “d011”.
INSERT INTO departments_dup(dept_no)
VALUES ('d010'), ('d011');    
    
    