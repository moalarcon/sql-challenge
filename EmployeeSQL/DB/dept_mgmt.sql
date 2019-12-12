DROP VIEW dept_mgmt;

CREATE VIEW dept_mgmt AS
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON e.emp_no = dm.emp_no
;

SELECT * FROM dept_mgmt