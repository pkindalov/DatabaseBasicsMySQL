USE `hospital`;
SELECT id AS `No.`, concat(first_name, ' ', last_name) AS `Full Name`,
job_title AS `Job Title`, salary FROM `employees`
WHERE salary > 1000.00
ORDER BY id