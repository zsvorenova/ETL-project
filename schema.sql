Create Table Profit(
	year INT, 
	Facility_Number INT Primary Key, 
    Facility_Name VARCHAR (60) NOT NULL,
	Begin_Date DATE,
	End_Date DATE,
	County_Name VARCHAR (60) NOT NULL,
	Control_Type VARCHAR (60) NOT NULL,
	Income_Statement_Item VARCHAR (60) NOT NULL, 
	Income_Statement_Amount INT,
	Patient_Adjusted_Day INT
);


Select * from Profit 



