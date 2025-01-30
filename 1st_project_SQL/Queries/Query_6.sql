-- Query number 6: GROUP BY, HAVING, AS
-- Query request: 
--   Find fashion models who have participated in five or more fashion exhibitions.
--   Shows the fashion models id and number of participations (as number_participations).

-- Expected output:
--   This query will return the personal_id of models who have participated in five or more fashion exhibitions.
--   Each row in the result will also display the number of such participations

SELECT	fashion_models_personal_id, COUNT(*) as number_participations
FROM partake_to
GROUP BY fashion_models_personal_id
HAVING COUNT(*) >= 5