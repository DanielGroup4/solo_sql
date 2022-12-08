-- duplicate records
insert into dept_manager_dup
values('110228', 'd003', '1992-03-21', '9999-01-01');

insert into departments_dup
values('d009', 'Customer Servise');


-- check 'dept_manager_dup' and 'departments_dup'
SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no ASC;


SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

-- inner join
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY dept_no; 