SELECT fd.personal_id, fd.name, fd.surname, COUNT(*) as number_UNI_dresses
FROM (fashion_designers as fd JOIN fashion_models as fm ON fd.personal_id = fm.fashion_designers_personal_id) 
	 JOIN dresses as d ON fm.personal_id = d.fashion_models_personal_id
WHERE d.size = "UNI"
GROUP BY fd.personal_id, fd.name, fd.surname
HAVING COUNT(*) >= 3