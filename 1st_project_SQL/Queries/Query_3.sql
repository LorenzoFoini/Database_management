SELECT m.name AS model_name, m.surname AS model_surname, m.personal_id
FROM fashion_models as m
WHERE m.fashion_designers_personal_id IN (
	SELECT d.personal_id
    FROM fashion_designers AS d
    WHERE d.stage_name IN ('Avant Couture', 'Boho Glam','Bohemian Luxe')
);

