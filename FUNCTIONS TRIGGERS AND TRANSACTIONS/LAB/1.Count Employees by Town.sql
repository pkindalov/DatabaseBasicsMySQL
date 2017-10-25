DELIMITER $$
CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(20))
RETURNS INTEGER

BEGIN
DECLARE town_count INTEGER;

SET town_count = (SELECT COUNT(first_name) 
						FROM employees AS e
						JOIN addresses AS a ON e.address_id = a.address_id
						JOIN towns AS t ON t.town_id = a.town_id
						WHERE t.name = town_name);
						
RETURN town_count;

END $$