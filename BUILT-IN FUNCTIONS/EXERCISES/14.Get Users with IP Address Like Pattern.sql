SELECT `name` AS 'Game', 
CASE
WHEN EXTRACT(hour FROM `start`) BETWEEN 0 AND 11 THEN 'Morning'
WHEN EXTRACT(hour FROM `start`) BETWEEN 12 AND 17 THEN 'Afternoon'
WHEN EXTRACT(hour FROM `start`) BETWEEN 18 AND 23 THEN 'Evening'
END AS 'Part of the Day', 
CASE
WHEN `duration` <= 3 THEN 'Extra Short'
WHEN `duration` BETWEEN 4 AND 6 THEN 'Short'
WHEN `duration` BETWEEN 7 AND 10 THEN 'Long'
ELSE 'Extra Long'
END   
 AS 'Duration'
FROM `games`
ORDER BY `Game` ASC, `Duration` ASC, `Part of the Day` ASC