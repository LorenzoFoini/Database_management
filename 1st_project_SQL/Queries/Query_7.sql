SELECT YEAR(fashion_models.date_of_birth) AS birth_year, 
	   AVG(fashion_models.height) AS avg_height, 
       COUNT(*) AS total_models
FROM fashion_models
WHERE YEAR(fashion_models.date_of_birth) >= 2000
GROUP BY YEAR(fashion_models.date_of_birth)
HAVING AVG(fashion_models.height) > 180;

