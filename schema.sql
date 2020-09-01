DROP TABLE IF EXISTS ca_hospitals;
DROP TABLE IF EXISTS staffing;

CREATE TABLE ca_hospitals (
	hospital_id INT PRIMARY KEY NOT NULL, 
	hospital_name VARCHAR NOT NULL, 
	status VARCHAR NOT NULL,
	fac_level VARCHAR NOT NULL,
	address VARCHAR NOT NULL,
	city VARCHAR NOT NULL,
	zip_code INT NOT NULL,
	county VARCHAR NOT NULL,
	category VARCHAR NOT NULL,
	lng FLOAT NOT NULL,
	lat FLOAT NOT NULL,
	facility_num INT NOT NULL
);

CREATE TABLE staffing (
	hospital_id INT, 
	year INT NOT NULL,
	staff_group VARCHAR NOT NULL,
	prod_hrs INT,
	prodhrs_adjptday FLOAT,
	FOREIGN KEY (hospital_id) REFERENCES ca_hospitals(hospital_id)
);

SELECT * FROM ca_hospitals LIMIT 15;

SELECT * FROM staffing LIMIT 15;

