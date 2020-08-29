-- Create Four Tables
CREATE TABLE us_hospitals(
  id TEXT PRIMARY KEY,
  hospital_name TEXT,
);

CREATE TABLE hospitals_beds(
  id TEXT PRIMARY KEY REFERENCES us_hospitals(id),
  licensed_beds TEXT,
  icu_beds TEXT,
  ventilator_usage TEXT
);
CREATE TABLE hospitals_location(
  id TEXT PRIMARY KEY REFERENCES us_hospitals(id),
  hospital_type TEXT,
  hospital_hq_address TEXT,
  hospital_hq_city TEXT,
  hospital_hq_state TEXT,
  hospital_hq_zip_code TEXT,
  state_name TEXT
);
CREATE TABLE hospitals_geometry(
  id TEXT PRIMARY KEY REFERENCES us_hospitals(id),
  lat TEXT,
  lng TEXT,
);