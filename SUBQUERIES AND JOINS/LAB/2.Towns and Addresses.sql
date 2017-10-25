SELECT t.town_id, t.name, a.address_text FROM towns AS t
LEFT JOIN addresses AS a ON t.town_id = a.town_id
WHERE t.name = 'San Francisco'
OR t.name = 'Sofia'
OR t.name = 'Carnation'
ORDER BY t.town_id, a.address_id