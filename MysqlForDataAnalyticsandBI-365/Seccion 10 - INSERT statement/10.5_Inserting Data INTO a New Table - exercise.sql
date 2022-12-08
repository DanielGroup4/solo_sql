/* Inserting Data INTO a New Table - exercise
create a new department called “Business Analysis”. Register it under number ‘d010’.

Hint: To solve this exercise, use the “departments” table.
*/

-- my solution --------------------------------------------
CREATE TABLE business_analysis
(
	dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

SELECT * 
FROM business_analysis;

INSERT INTO business_analysis
(
	dept_no,
    dept_name
)
SELECT *
FROM departments;

SELECT *
FROM business_analysis
ORDER BY dept_no;

DROP TABLE business_analysis;


-- correct solution ----------------------------
INSERT INTO departments
VALUES 
(
	'd010', 'Business_Analysis'
);

-- lets see if the operation was performed correctly
SELECT * 
FROM departments
ORDER BY dept_no DESC
