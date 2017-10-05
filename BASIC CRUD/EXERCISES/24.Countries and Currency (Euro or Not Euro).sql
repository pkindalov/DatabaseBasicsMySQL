USE `geography`;
SELECT country_name, country_code, 
IF(`currency_code` = 'EUR', 'Euro', 'Not Euro') AS `currency` 
FROM `countries` as c
ORDER BY c.country_name;

-- 
