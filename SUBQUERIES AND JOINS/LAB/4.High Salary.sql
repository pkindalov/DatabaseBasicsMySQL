SELECT count(e.employee_id) FROM employees AS e
WHERE e.salary > 
(SELECT AVG(salary) AS avg_salary FROM employees);