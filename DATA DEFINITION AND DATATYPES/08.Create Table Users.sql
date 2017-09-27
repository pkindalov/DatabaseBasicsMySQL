USE `minions`;
CREATE TABLE `Users` (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(30) NOT NULL UNIQUE,
password VARCHAR(26) NOT NULL,
profile_picture TINYBLOB,
last_login_time TIMESTAMP,
is_deleted TINYINT
);

INSERT INTO `Users` (id, username, password, profile_picture, last_login_time, is_deleted)
VALUES(1, 'rosenJivotnoto', 'animalPower', NULL, NULL, 0),
		(2, 'dsfsdf', 'animalPower', NULL, NULL, 0),
		(3, 'dfsf', 'animalPower', NULL, NULL, 0),
		(4, 'dfgsdfgdf', 'animalPower', NULL, NULL, 0),
		(5, 'dfsdfsdfsdfsfsds', 'animalPower', NULL, NULL, 0) 