UPDATE listings l
SET neighbourhood_group = m.neighbourhood_group
FROM (
	SELECT neighbourhood, MAX(neighbourhood_group) AS neighbourhood_group
	FROM listings
	WHERE neighbourhood_group IS NOT NULL
	GROUP BY neighbourhood
	HAVING COUNT(DISTINCT neighbourhood_group) = 1
) m
WHERE l.neighbourhood_group IS NULL
AND l.neighbourhood = m.neighbourhood;

SELECT neighbourhood, COUNT(*)
FROM listings
WHERE neighbourhood_group IS NULL
GROUP BY neighbourhood;