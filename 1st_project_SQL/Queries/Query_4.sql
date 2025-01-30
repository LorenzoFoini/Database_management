SELECT sin.fashion_competitions_id, comp.title, count(*) AS number_dresses_shown
FROM shown_in AS sin JOIN fashion_competitions AS comp 
     ON sin.fashion_competitions_id = comp.id
GROUP BY sin.fashion_competitions_id, comp.title

