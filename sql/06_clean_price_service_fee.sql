UPDATE listings
SET price = REPLACE(REPLACE(price, '$', ''), ',', '');

ALTER TABLE listings
ALTER COLUMN price TYPE NUMERIC
USING price::NUMERIC;

UPDATE listings
SET service_fee = REPLACE(REPLACE(service_fee, '$', ''), ',', '');

ALTER TABLE listings
ALTER COLUMN service_fee TYPE NUMERIC
USING service_fee::NUMERIC;


SELECT price, service_fee FROM listings 