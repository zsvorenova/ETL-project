CREATE TABLE id_zip (
	hospital_id INT PRIMARY KEY NOT NULL,
	facility_num INT NOT NULL,
	hospital_name VARCHAR NOT NULL,
	address VARCHAR NOT NULL,
	city VARCHAR NOT NULL,
    zip_code INT NOT NULL,
	county TEXT NOT NULL,
	lng FLOAT NOT NULL,
	lat FLOAT NOT NULL
);

SELECT * FROM id_zip LIMIT 15;