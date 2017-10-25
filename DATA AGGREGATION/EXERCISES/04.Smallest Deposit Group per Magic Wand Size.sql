SELECT wd.`deposit_group`
FROM 
(
SELECT wd.`deposit_group`, AVG(wd.`magic_wand_size`) AS 'average_wand_size'
FROM `wizzard_deposits` AS wd
GROUP BY `deposit_group`
ORDER BY `average_wand_size` ASC
LIMIT 1) AS wd;