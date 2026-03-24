# NYC Airbnb Data Engineering

## Project Title & Description
NYC Airbnb Data Engineering Portfolio: SQL-based data cleaning and transformation pipeline.

## Dataset Source
Kaggle: NYC Airbnb Open Data

## Objective
- Clean messy data  
- Transform text, numeric, and date columns  
- Fill NULLs where appropriate  
- Produce analytical insights

## Workflow
1. Dropped columns country and country_code due to redundancy 
2. Cleaned neighbourhood_group values with incorrect spellings
3. Converted last_review from text to date with correct date formatting
4. Updated null and “unconfirmed” values of host_identity_verified to “unverified”
5. Missing neighbourhood_group values were inputed using existing neighbourhood-to-group mappings. 
6. Converted price and service_fee from text to numeric, removing instances of ‘$’ and ‘,’

## Insights
1. Top 5 average listing prices in Bronx neighborhoods

## How to Run
1. Open SQL scripts in PostgreSQL / pgAdmin4
2. Run the queries from /sql folders in order
