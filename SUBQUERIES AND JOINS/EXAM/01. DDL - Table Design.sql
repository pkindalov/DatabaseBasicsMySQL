CREATE DATABASE IF NOT EXISTS `RS`;
USE `RS`;
CREATE TABLE `users`(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(30) UNIQUE,
	`password` VARCHAR(50) NOT NULL,
	name VARCHAR(50),
	gender VARCHAR(1),
	birthdate DATETIME,
	age INT(11),
	email VARCHAR(50) NOT NULL
);

CREATE TABLE `departments`(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE `employees`(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	gender VARCHAR(1),
	birthdate DATETIME,
	age INT(11),
	department_id INT(11),
	CONSTRAINT fk_department_employee_id FOREIGN KEY(department_id) REFERENCES departments(id)
);

CREATE TABLE `categories`(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	department_id INT(11),
	CONSTRAINT fk_department_category_id FOREIGN KEY(department_id) REFERENCES departments(id)
);

CREATE TABLE `status`(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
	label VARCHAR(30) NOT NULL
);

CREATE TABLE `reports`(
id INT(11) PRIMARY KEY AUTO_INCREMENT,
category_id INT(11),
CONSTRAINT fk_category_report_id FOREIGN KEY(category_id) REFERENCES categories(id),
status_id INT(11),
CONSTRAINT fk_status_report_id FOREIGN KEY(status_id) REFERENCES status(id),
open_date DATETIME,
close_date DATETIME,
description VARCHAR(200),
user_id INT,
CONSTRAINT fk_user_report_id FOREIGN KEY(user_id) REFERENCES users(id),
employee_id INT(11),
CONSTRAINT fk_employee_report_id FOREIGN KEY(employee_id) REFERENCES employees(id)
);