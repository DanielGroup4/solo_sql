SELECT *
FROM
    departments_dup
ORDER BY dept_no;

DELETE FROM departments_dup

ROLLBACK;
