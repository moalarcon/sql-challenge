DROP VIEW emp_86;

CREATE VIEW emp_86 AS
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees e
WHERE e.hire_date LIKE '1986%'
;

SELECT * FROM emp_86