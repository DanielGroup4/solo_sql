-- creating new table
CREATE TABLE departments_dup
(
	dept_no CHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL
);

-- review creation of new table
SELECT *
FROM departments_dup;

-- insert values to new table
INSERT departments_dup
(
	dept_no,
    dept_name
)
SELECT * 
FROM departments; 

-- lets see if the operation was performed correctly
SELECT *
FROM departments_dup
ORDER BY dept_no;
