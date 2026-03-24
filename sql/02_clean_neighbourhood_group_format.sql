UPDATE listings
SET neighbourhood_group = 'Manhattan'
WHERE neighbourhood_group = 'manhatan';

UPDATE listings
SET neighbourhood_group = 'Brooklyn'
WHERE neighbourhood_group = 'brookln';

SELECT neighbourhood_group, COUNT(*)
FROM listings
GROUP BY neighbourhood_group
ORDER BY COUNT(*) DESC;