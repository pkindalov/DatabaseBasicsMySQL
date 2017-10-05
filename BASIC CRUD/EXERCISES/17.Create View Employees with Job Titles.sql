USE `soft_uni`;

UPDATE `employees` SET `middle_name` = ''
WHERE `middle_name` IS NULL;

CREATE VIEW `v_employees_job_titles` AS
SELECT CONCAT(`first_name`, ' ', `middle_name`, ' ' , `last_name`) AS full_name, `job_title` FROM `employees`;


SELECT * FROM `v_employees_job_titles`;

