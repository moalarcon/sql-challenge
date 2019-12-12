CREATE VIEW lastname_freq AS
SELECT e.last_name, COUNT(e.last_name) AS "emp_count"
FROM employees e
GROUP BY e.last_name
ORDER BY "emp_count" DESC;

SELECT * FROM lastname_freq