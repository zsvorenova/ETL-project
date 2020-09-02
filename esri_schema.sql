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
