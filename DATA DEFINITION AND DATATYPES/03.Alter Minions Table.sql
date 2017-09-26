USE `minions`;
ALTER TABLE `minions`
ADD town_id INT NOT NULL;

ALTER TABLE `minions`
ADD FOREIGN KEY (town_id) REFERENCES towns(id)