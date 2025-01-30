SELECT location_address, count(id) as exhibitions
FROM fashion_exhibitions
WHERE location_address NOT IN(
	SELECT DISTINCT location_address
    FROM fashion_competitions
    )
GROUP BY location_address


