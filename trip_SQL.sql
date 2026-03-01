-- creating database to store data
create database taxi_trip_db;
use taxi_trip_db;
-- taxi trip data is loaded from jupyter notebook
-- created calender tabel structure data loaded uing import wizard  
CREATE TABLE calendar (
    calendar_date DATE PRIMARY KEY,
    fiscal_year INT,
    fiscal_quarter INT,
    fiscal_month_number INT,
    fiscal_month_of_quarter INT,
    fiscal_week_of_year INT,
    day_of_week INT,
    fiscal_month_name VARCHAR(20),
    fiscal_month_year VARCHAR(20),
    fiscal_quarter_year VARCHAR(20),
    day_of_month_number INT,
    day_name VARCHAR(20)
);
-- created location tabel structure data loaded uing import wizard 
CREATE TABLE location (
    LocationID INT PRIMARY KEY,
    Borough VARCHAR(50),
    Zone VARCHAR(100),
    service_zone VARCHAR(100)
);
-- created view to load only needed data into power bi  
CREATE VIEW dim_pickup_location AS
SELECT
    LocationID AS pickup_location_id,
    Borough,
    Zone,
    service_zone
FROM location;
select * from dim_pickup_locatio limit 5;

CREATE VIEW dim_dropoff_location AS
SELECT
    LocationID AS dropoff_location_id,
    Borough,
    Zone,
    service_zone
FROM location;

select * from dim_dropoff_location limit 5;

CREATE VIEW taxi_trips AS
SELECT
    pickup_date,
    HOUR(pickup_time) AS pickup_hour,
    pickup_location_id,
    dropoff_location_id,
    trip_distance,
    total_amount
FROM trips;
select * from taxi_trips limit 3;