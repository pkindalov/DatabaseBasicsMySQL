USE `minions`;
CREATE TABLE `People` (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(200) NOT NULL,
picture BLOB,
height DOUBLE(5,2),
weight DOUBLE(5,2),
gender CHAR NOT NULL,
birthdate DATE NOT NULL,
biography TEXT
);

INSERT INTO `People` (id, name, picture, height, weight, gender, birthdate, biography)
VALUES(1, 'Rosen', NULL, 1.75, 78, 'm', '2003.04.25', NULL),
(2, 'Milcho', NULL, 1.75, 78, 'm', '2003.04.25', NULL),
(3, 'Dobri', NULL, 1.75, 78, 'm', '2003.04.25', NULL),
(4, 'Sasho', NULL, 1.75, 78, 'm', '2003.04.25', NULL),
(5, 'Ivan', NULL, 1.75, 78, 'm', '2003.04.25', NULL)