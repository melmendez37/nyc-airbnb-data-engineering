CREATE TABLE listings (
    id BIGINT,
    name TEXT,
    host_id BIGINT,
    host_identity_verified TEXT,
    host_name TEXT,
    neighbourhood_group TEXT,
    neighbourhood TEXT,
    latitude FLOAT,
    longitude FLOAT,
    country TEXT,
    country_code TEXT,
    instant_bookable BOOLEAN,
    cancellation_policy TEXT,
    room_type TEXT,
    construction_year INTEGER,
    price TEXT,           -- convert later from text like '$966'
    service_fee TEXT,     -- convert later from text like '$50'
    minimum_nights INTEGER,
    num_of_reviews INTEGER,
    last_review TEXT,        -- keep as DATE, import as TEXT first if needed
    reviews_per_month FLOAT,
    review_rate_number INTEGER,
    calculated_host_listings_count INTEGER,
    available_days INTEGER,
    house_rules TEXT,
    license TEXT
);

SELECT * FROM listings;