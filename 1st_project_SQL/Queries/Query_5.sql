SELECT size, count(*) as occurrence
FROM dresses
WHERE production_time > 60
GROUP BY size



