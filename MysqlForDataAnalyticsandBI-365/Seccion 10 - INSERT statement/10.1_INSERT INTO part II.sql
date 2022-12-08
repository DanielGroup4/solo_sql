INSERT INTO employees
VALUES 
(
999903,
'1977-09-14',
'Johny',
'Creek',
'M',
'1999-01-01'
);

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10
