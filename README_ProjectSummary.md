# ETL-project
ETL project
Project 2: ETL
Ashley Kerber, B Daves, Oleg Ryzhov, Zuzana Svorenova, Gianni Adamo and Chioma Maduko

Hypothetical Project:
Look at California County Hospital profitability as relates to productivity by specialized job type
If time allows - *Develop web page from short summary and tables*
           	Future Project: Review profitability by procedure costs and insurance coverage?

Data:
1.      Healthcare Census
2.      Definitive Healthcare: USA Hospital Beds
3.      California Profitability
4.      California Staffing & Productivity
5.      Healthcare.gov Hospital Data
6.     CHHS Crosswalk
7.     CA Healthcare Facility Listing

Transformation needed:
Cleaning, joining, filtering and normalization
Type of Final Production Database:
Relational
Tables:
Staffing, Profitability & Definitive Healthcare
 
Deliverables/Assignments
Zuzana – Git Master: Establish Git Repository with branches 
Ashley – Generate Topic & Reporter: document workflow and process                                                                                    
ALL - create independent Jupyter notebooks to clean data
Oleg – clean Definitive Healthcare: USA Hospital Beds
B – clean Healthcare.gov Hospital Data
Gianni – clean Healthcare Census
Zuzana – clean California Staffing & Productivity & match to CA Healthcare Facility Listing for zip codes
Chioma – clean California Profitability
 
Process:
Oleg created Entity Relationship Table (ERT) to help identify data on which to join.  Extracted Hospital JSON data and identified fields needed, created index of dictionaries, created database connection and then SQL tables, loaded data frames into database.  Performed query analysis and selected data for California. 
Gianni, B, Zuzana & Chioma cleaned respective data sets, created schema for each data set, then pushed all data from their individual branches to the master.          	
Oleg tried to create a group server in GitHub by providing database credentials and SQL code, but we were unsuccessful in utilizing this tool.
Zuzana pushed each branch to the master and resolved conflicts one at a time.         
                          	
Extract: Definitive Healthcare: USA Hospital Beds - JSON data with API interaction, 
  Healthcare.gov – CSV data, 
   Hospital Data – CSV data, 
   Healthcare Census – CSV data, 
   California Staffing & Productivity & California Profitability – CSV data, 
   and CA Healthcare Facility Listing – CSV data
   
Transform: Remove unnecessary or duplicative data from each data set source to reduce stress on the database; 
Clean data to align format and identify commonalities
Identify gaps and areas of convolution – troubleshoot
  1. Need to find a way to link all data sets – suggestions to use the NPL (National Provider List) to bridge? 
  2. Variances in Facility/Provider Name (Ameda Hosp. vs Ameda Hospital vs Ameda County Hospital)
    Too many variances to be able to connect data from different data sets off of this particular piece of data. 
  3. Address in some tables is for headquarters or corporate office, not necessarily the individual sites/location
    Utilizing address presents a problem as there is not another index to identify and differentiate providers based on address - all can exist at the same address; 
      individual providers (Dr. Smith), Hospital entity (Ameda Hospital), medical group (DuPage Medical Group) etc.
4. Variances in Address (St. vs Street vs St) would take a long time to clean – zip code should provide consistent information to match from
5. Try to match based off:
    a. State (not specific enough)
    b. Zip Code (best option)
    c. County (not available in all data sets)
    d. Hospital Name (not consistent in all data sets: inactive locations, name changes throughout time, location moves)

We wanted to connect the datasets between each other without creating a new key.
•	staffing and profitability datasets have identical ids (California state ids)
•	census data and general info have as well same type of id even if different from staffing/profitability data (ids assigned by Medicare, they need to be transfer into the same format)
•	for staffing/profitability data we have longitude and latitude available too (except of few lines, hospitals that were closed/relocated since 2013) + we have some additional hospital data (new hospitals/locations since 2013) as well
•	general info and esri data have longitude and latitude data too
•	unfortunately, esri ids seems to be just sequential data based on the csv file
•	Longitude and latitude in profitability and staffing files and there are maybe only 1 or 2 duplicates, it seems like a similar, in general, info dataset. Not sure about esri data.
It seems that we would be able to connect most of the data through this 3 keys: California ids, Medicare ids, and longitude+latitude
Another option would be to unify the addresses and try to use it as a key to connect.

Load: Chosen to compile the most relatable data in the short timeframe, with the constraints of the data indexes we identified from the sources--our database contains 5 tables and a database of California medical-related data.
