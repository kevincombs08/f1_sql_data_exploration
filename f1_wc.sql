-- First things first, I started importing the various data tables via MySQLs Wizard Table Import. Thankfully, for the sake of this project, some imports failed and allowed me to showcase ALTERING, UPDATING, CREATING, DROPPING tables/datatypes withing this project.
-- I started with the "races" table. It failed importing about 60 rows so I curated a custom function to make it easy to copy/paste from Excel straight into MySQL. This was a common theme for the table imports and the following queries feature me manipulating
-- the tables to show the full data range as well as cleaning NULL values found in the Excel file. The custom function is featured in the .README file. I limited some of the rows here, especially on the results table, just for space sake. I can 
-- provide full queries if interested. 

INSERT INTO races(
	raceId
	,year
	,round
	,circuitId
	,name
	,date
	,time
	,url
	,fp1_date
	,fp1_time
	,fp2_date
	,fp2_time
	,fp3_date
	,fp3_time
	,quali_date
	,quali_time
	,sprint_date
	,sprint_time)
VALUES 
	(1062, 2021, 11, 11, 'Hungarian Grand Prix', '2021-08-01', '13:00:00', 'http://en.wikipedia.org/wiki/2021_Hungarian_Grand_Prix', '2021-07-30', '\N', '2021-07-30', '\N', '2021-07-31', '\N', '2021-07-31', '\N', '\N', '\N'),
	(1063, 2021, 12, 13, 'Belgian Grand Prix', '2021-08-29', '13:00:00', 'http://en.wikipedia.org/wiki/2021_Belgian_Grand_Prix', '2021-08-27', '\N', '2021-08-27', '\N', '2021-08-28', '\N', '2021-08-28', '\N', '\N', '\N'),
	(1064, 2021, 13, 39, 'Dutch Grand Prix', '2021-09-05', '13:00:00', 'http://en.wikipedia.org/wiki/2021_Dutch_Grand_Prix', '2021-09-03', '\N', '2021-09-03', '\N', '2021-09-04', '\N', '2021-09-04', '\N', '\N', '\N'),
	(1065, 2021, 14, 14, 'Italian Grand Prix', '2021-09-12', '13:00:00', 'http://en.wikipedia.org/wiki/2021_Italian_Grand_Prix', '2021-09-10', '\N', '2021-09-11', '\N', '\N', '\N', '2021-09-10', '\N', '2021-09-11', '\N'),
	(1066, 2021, 15, 71, 'Russian Grand Prix', '2021-09-26', '12:00:00', 'http://en.wikipedia.org/wiki/2021_Russian_Grand_Prix', '2021-09-24', '\N', '2021-09-24', '\N', '2021-09-25', '\N', '2021-09-25', '\N', '\N', '\N'),
	(1067, 2021, 16, 5, 'Turkish Grand Prix', '2021-10-10', '12:00:00', 'http://en.wikipedia.org/wiki/2021_Turkish_Grand_Prix', '2021-10-08', '\N', '2021-10-08', '\N', '2021-10-09', '\N', '2021-10-09', '\N', '\N', '\N'),
	(1069, 2021, 17, 69, 'United States Grand Prix', '2021-10-24', '19:00:00', 'http://en.wikipedia.org/wiki/2021_United_States_Grand_Prix', '2021-10-22', '\N', '2021-10-22', '\N', '2021-10-23', '\N', '2021-10-23', '\N', '\N', '\N'),
	(1070, 2021, 18, 32, 'Mexico City Grand Prix', '2021-11-07', '19:00:00', 'http://en.wikipedia.org/wiki/2021_Mexican_Grand_Prix', '2021-11-05', '\N', '2021-11-05', '\N', '2021-11-06', '\N', '2021-11-06', '\N', '\N', '\N'),
	(1071, 2021, 19, 18, 'Sao Paulo Grand Prix', '2021-11-14', '17:00:00', 'http://en.wikipedia.org/wiki/2021_S%C3%A3o_Paulo_Grand_Prix', '2021-11-12', '\N', '2021-11-13', '\N', '\N', '\N', '2021-11-12', '\N', '2021-11-13', '\N'),
	(1072, 2021, 21, 77, 'Saudi Arabian Grand Prix', '2021-12-05', '17:30:00', 'http://en.wikipedia.org/wiki/2021_Saudi_Arabian_Grand_Prix', '2021-12-03', '\N', '2021-12-03', '\N', '2021-12-04', '\N', '2021-12-04', '\N', '\N', '\N'),
	(1073, 2021, 22, 24, 'Abu Dhabi Grand Prix', '2021-12-12', '13:00:00', 'http://en.wikipedia.org/wiki/2021_Abu_Dhabi_Grand_Prix', '2021-12-10', '\N', '2021-12-10', '\N', '2021-12-11', '\N', '2021-12-11', '\N', '\N', '\N'),
	(1075, 2022, 2, 77, 'Saudi Arabian Grand Prix', '2022-03-27', '17:00:00', 'http://en.wikipedia.org/wiki/2022_Saudi_Arabian_Grand_Prix', '2022-03-25', '14:00:00', '2022-03-25', '17:00:00', '2022-03-26', '14:00:00', '2022-03-26', '17:00:00', '\N', '\N'),
	(1076, 2022, 3, 1, 'Australian Grand Prix', '2022-04-10', '05:00:00', 'http://en.wikipedia.org/wiki/2022_Australian_Grand_Prix', '2022-04-08', '03:00:00', '2022-04-08', '06:00:00', '2022-04-09', '03:00:00', '2022-04-09', '06:00:00', '\N', '\N');
--
UPDATE races
SET fp1_date = CASE WHEN fp1_date IN ('N','\\N') THEN NULL ELSE fp1_date END,
	fp1_time = CASE WHEN fp1_time IN ('N','\\N') THEN NULL ELSE fp1_date END,
	fp2_date = CASE WHEN fp2_date IN ('N','\\N') THEN NULL ELSE fp2_date END,
	fp2_time = CASE WHEN fp2_time IN ('N','\\N') THEN NULL ELSE fp2_time END,
	fp3_date = CASE WHEN fp3_date IN ('N','\\N') THEN NULL ELSE fp3_date END,
	fp3_time = CASE WHEN fp3_time IN ('N','\\N') THEN NULL ELSE fp3_time END,
	quali_date = CASE WHEN quali_date IN ('N','\\N') THEN NULL ELSE quali_date END,
	quali_time = CASE WHEN quali_time IN ('N','\\N') THEN NULL ELSE quali_time END,
	sprint_date = CASE WHEN sprint_date IN ('N','\\N') THEN NULL ELSE sprint_date END,
	sprint_time = CASE WHEN sprint_time IN ('N','\\N') THEN NULL ELSE sprint_time END
WHERE raceID < 1061;

-- Altering pit_stops table 

ALTER TABLE pit_stops
	MODIFY COLUMN time TIME;

ALTER TABLE pit_stops
	MODIFY COLUMN duration FLOAT;  

-- Inserting missing rows from constructor_standings

INSERT INTO f1_wc.constructor_standings(
	constructorStandingsId 
	,raceId 
	,constructorId 
	,points 
    ,position 
	,positionText 
	,wins)
VALUES
	(28395, 1096, 210, 37, 8, 8, 0),
	(28396, 1096, 51, 55, 6, 6, 0),
	(28397, 1096, 214, 173, 4, 4, 0),
	(28398, 1096, 213, 35, 9, 9, 0),
	(28399, 1096, 117, 55, 7, 7, 0),
	(28400, 1096, 3, 8, 10, 10, 0),
	(28401, 1096, 1, 159, 5, 5, 0),
	(28402, 1096, 9, 759, 1, 1, 17),
	(28403, 1098, 51, 0, 1, 1, 0),
	(28404, 1098, 213, 0, 2, 2, 0),
	(28405, 1098, 214, 0, 3, 3, 0),
	(28406, 1098, 117, 0, 4, 4, 0),
	(28407, 1098, 6, 0, 5, 5, 0),
	(28408, 1098, 210, 0, 6, 6, 0),
	(28409, 1098, 1, 0, 7, 7, 0),
	(28410, 1098, 131, 0, 8, 8, 0),
	(28411, 1098, 9, 0, 9, 9, 0),
	(28412, 1098, 3, 0, 10, 10, 0);
    
-- Cleaning NULL values, changing datatypes for future calculations

UPDATE qualifying
SET q1 = CASE WHEN q1 = '\\N' THEN NULL ELSE q1 END,
	q2 = CASE WHEN q2 = '\\N' THEN NULL ELSE q2 END,
    q3 = CASE WHEN q3 = '\\N' THEN NULL ELSE q3 END; 

ALTER TABLE f1_wc.qualifying
	MODIFY COLUMN q1 TIME,
	MODIFY COLUMN q2 TIME,
	MODIFY COLUMN q3 TIME; 
    
-- Creating drivers table and inserting around 800 rows of data. Again, showcased a few rows of the full query to save space. After inserting data, I cleared NULL values that were standard in the Excel files.

create table drivers (
	driverId INT
    ,driverRef TEXT
    ,number TEXT
    ,code TEXT
    ,forename TEXT
    ,surname TEXT
    ,dob DATE
    ,nationality TEXT
    ,url TEXT);
    
INSERT INTO drivers(
	driverId
    ,driverRef
    ,number
    ,code
    ,forename
    ,surname
    ,dob
    ,nationality
    ,url)
VALUES
	(1, 'hamilton', 44, 'HAM', 'Lewis', 'Hamilton', '1985-01-07', 'British', 'http://en.wikipedia.org/wiki/Lewis_Hamilton'),
	(2, 'heidfeld', '\\N', 'HEI', 'Nick', 'Heidfeld', '1977-05-10', 'German', 'http://en.wikipedia.org/wiki/Nick_Heidfeld'),
	(3, 'rosberg', 6, 'ROS', 'Nico', 'Rosberg', '1985-06-27', 'German', 'http://en.wikipedia.org/wiki/Nico_Rosberg'),
	(4, 'alonso', 14, 'ALO', 'Fernando', 'Alonso', '1981-07-29', 'Spanish', 'http://en.wikipedia.org/wiki/Fernando_Alonso'),
	(5, 'kovalainen', '\\N', 'KOV', 'Heikki', 'Kovalainen', '1981-10-19', 'Finnish', 'http://en.wikipedia.org/wiki/Heikki_Kovalainen'),
	(6, 'nakajima', '\\N', 'NAK', 'Kazuki', 'Nakajima', '1985-01-11', 'Japanese', 'http://en.wikipedia.org/wiki/Kazuki_Nakajima'),
	(7, 'bourdais', '\\N', 'BOU', 'Sebastien', 'Bourdais', '1979-02-28', 'French', 'http://en.wikipedia.org/wiki/S%C3%A9bastien_Bourdais'),
	(8, 'raikkonen', 7, 'RAI', 'Kimi', 'Raikkonen', '1979-10-17', 'Finnish', 'http://en.wikipedia.org/wiki/Kimi_R%C3%A4ikk%C3%B6nen'),
	(9, 'kubica', 88, 'KUB', 'Robert', 'Kubica', '1984-12-07', 'Polish', 'http://en.wikipedia.org/wiki/Robert_Kubica'),
	(10, 'glock', '\\N', 'GLO', 'Timo', 'Glock', '1982-03-18', 'German', 'http://en.wikipedia.org/wiki/Timo_Glock'),
	(11, 'sato', '\\N', 'SAT', 'Takuma', 'Sato', '1977-01-28', 'Japanese', 'http://en.wikipedia.org/wiki/Takuma_Sato');

UPDATE drivers
set	driverRef= CASE WHEN driverRef = '\\N' THEN NULL ELSE driverRef END,
    number = CASE WHEN number = '\\N' THEN NULL ELSE number END,
    code = CASE WHEN code = '\\N' THEN NULL ELSE code END,
    forename = CASE WHEN forename = '\\N' THEN NULL ELSE forename END,
    surname = CASE WHEN surname = '\\N' THEN NULL ELSE surname END,
    nationality = CASE WHEN nationality = '\\N' THEN NULL ELSE nationality END, 
    url = CASE WHEN url = '\\N' THEN NULL ELSE url END; 
    
--
