SELECT e.first_name, e.last_name, e.department_id 
FROM `employees` AS e,
(SELECT e.department_id, AVG(e.salary) AS 'average_salary'
FROM `employees` AS e
GROUP BY e.department_id) AS department_average_salary
WHERE e.department_id = department_average_salary.department_id AND
e.salary > department_average_salary.average_salary
ORDER BY e.department_id ASC
LIMIT 10;          