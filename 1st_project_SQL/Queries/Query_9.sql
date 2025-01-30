SELECT fabrics.name AS fabric_name, fabrics.price_per_square_meter,
	   COUNT(composed_of.dresses_id) AS total_dresses
FROM composed_of JOIN fabrics ON composed_of.fabrics_id = fabrics.id
WHERE amount > 75 and price_per_square_meter > 25
GROUP BY fabrics.name, fabrics.price_per_square_meter
HAVING count(composed_of.dresses_id) >= 5;

