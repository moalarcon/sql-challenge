DROP VIEW emp_sal;

CREATE VIEW emp_sal AS
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
JOIN salaries s ON s.emp_no = e.emp_no
;

SELECT * FROM emp_sal