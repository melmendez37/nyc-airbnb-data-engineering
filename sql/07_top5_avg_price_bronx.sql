SELECT neighbourhood, ROUND(AVG(price), 2) AS avg_price
FROM listings
WHERE neighbourhood_group = 'Bronx'
GROUP BY neighbourhood
ORDER BY avg_price DESC
LIMIT 5;