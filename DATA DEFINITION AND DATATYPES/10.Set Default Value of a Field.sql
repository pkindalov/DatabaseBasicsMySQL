USE `minions`;
ALTER TABLE `Users`
MODIFY COLUMN last_login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP;