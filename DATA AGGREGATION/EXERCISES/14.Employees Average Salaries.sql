CREATE TABLE `test_table`
(
SELECT * FROM `employees` AS e
WHERE e.`salary` > 30000
);

DELETE FROM `test_table`
WHERE manager_id = 42;

UPDATE `test_table` AS t
SET t.`salary` = t.`salary` + 5000
WHERE t.`department_id` = 1;

SELECT t.`department_id`, AVG(t.`salary`) AS 'average_salary' 
FROM `test_table` AS t
GROUP BY t.`department_id`;