DROP TABLE IF EXISTS h_info;

CREATE TABLE h_info (
	facility_id INT PRIMARY KEY, 
    facility_name VARCHAR,
    Address VARCHAR,
	City VARCHAR,
    State VARCHAR,
    zip_code VARCHAR,
    county_name VARCHAR,
    phone_number VARCHAR,
    hospital_type VARCHAR,
    hospital_ownership VARCHAR,
);

