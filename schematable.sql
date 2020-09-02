DROP TABLE IF EXISTS profit;
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


Select * from profit 
