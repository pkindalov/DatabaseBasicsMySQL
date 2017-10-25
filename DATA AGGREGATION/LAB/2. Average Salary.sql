USE `restaurant`;
SELECT `department_id`, ROUND(AVG(`salary`), 2) AS `Total Salary` FROM `employees`
GROUP BY `department_id`
ORDER BY `department_id`;