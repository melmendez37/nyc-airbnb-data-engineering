UPDATE listings
SET last_review = TRIM(last_review);

ALTER TABLE listings
ALTER COLUMN last_review TYPE DATE
USING TO_DATE(last_review, 'MM/DD/YYYY');

SELECT last_review, COUNT(*)
FROM listings
GROUP BY last_review
ORDER BY last_review;