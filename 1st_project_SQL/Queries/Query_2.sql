SELECT *
FROM fashion_models
WHERE size LIKE "%S"
ORDER BY height DESC
LIMIT 5;