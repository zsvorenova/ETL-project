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

CREATE TABLE hospitals_info (
	facility_id INT PRIMARY KEY, 
    facility_name VARCHAR,
    Address VARCHAR,
	City VARCHAR,
    State VARCHAR,
    zip_code VARCHAR,
    county_name VARCHAR,
    phone_number VARCHAR,
    hospital_type VARCHAR,
    hospital_ownership VARCHAR
);

-- Create Four Tables
CREATE TABLE us_hospitals(
  id TEXT PRIMARY KEY,
  hospital_name TEXT
);

CREATE TABLE hospitals_beds(
  id TEXT PRIMARY KEY REFERENCES us_hospitals(id),
  licensed_beds INT,
  icu_beds INT,
  ventilator_usage INT
);
CREATE TABLE hospitals_location(
  id TEXT PRIMARY KEY REFERENCES us_hospitals(id),
  hospital_type TEXT,
  hospital_hq_address TEXT,
  hospital_hq_city TEXT,
  hospital_hq_state TEXT,
  zip_code INT,
  county_name TEXT,
  state_name TEXT
);
CREATE TABLE hospitals_geometry(
  id TEXT PRIMARY KEY REFERENCES us_hospitals(id),
  lat FLOAT,
  lng FLOAT
);

CREATE TABLE healthcare_census(
	Provider_Id INT PRIMARY KEY,
	DRG_Definition TEXT,
	Provider_Name TEXT,
	Street_Address TEXT,
	City TEXT,
	Provider_State TEXT,
	Zip_Code TEXT,
	Hospital_Referral_Region_Description TEXT,
	Total_Discharges TEXT,
	Average_Covered_Charges TEXT,
	Average_Total_Payments TEXT,
	Average_Medicare_Payments TEXT,
	State_ TEXT,
	Insured_Males_18_25 TEXT,
	Noninsured_Males_18_25 TEXT,
	Insured_Females_18_25 TEXT,
	Noninsured_Females_18_25 TEXT
);

Create Table hospitals_profit (
		year INT NOT NULL, 
		hospital_id INT Primary Key NOT NULL,
		facility_number INT,
    	facility_name VARCHAR NOT NULL,
		begin_date DATE NOT NULL,
		end_date DATE NOT NULL,
		county_name VARCHAR NOT NULL,
		control_type VARCHAR NOT NULL,
		income_statement_item VARCHAR NOT NULL, 
		income_statement_amount FLOAT NOT NULL,
		patient_adjusted_day INT NOT NULL                                                                                                                                                                                            
);


