CREATE TABLE hospitals_info(
  facility_id TEXT PRIMARY KEY,
  hospital_name TEXT,
  state_name TEXT,
  zip_code INT,
  ownership TEXT
);

CREATE TABLE hospitals_staff(
  facility_num TEXT PRIMARY KEY,
  hospital_name TEXT,
  year INT,
  county_name TEXT,
  hours_type TEXT,
  prod_hours INT,
  adj_patient_hours FLOAT
);
CREATE TABLE hospitals_finance(
  facility_num TEXT PRIMARY KEY,
  hospital_name TEXT,
  year INT,
  county_name TEXT,
  tot_income INT,
  adj_patient_income FLOAT,
  FOREIGN KEY(facility_num) REFERENCES hospitals_staff(facility_num)
);

CREATE TABLE hospitals_insuarance(
  provider_id TEXT PRIMARY KEY,
  hospital_name TEXT,
  zip_code INT,
  avg_cov_charges FLOAT,
  avg_tot_payments FLOAT
);
