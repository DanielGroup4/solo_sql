# how many poeple have been hired after the 1st of january 2000?

SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';
    
# creating index
CREATE INDEX i_hire_date ON employees(hire_date);


# another example
# select all employees bearing the name "Georgi Facello"
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Georgi'
        AND last_name = 'Facello';
        
CREATE INDEX i_composite ON employees(first_name, last_name);

# show indexes
SHOW INDEX FROM employees FROM employees;
SHOW INDEX FROM employees;


