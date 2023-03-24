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
	SET fp1_date = CASE WHEN fp1_date IN ('N','\\N') THEN NULL ELSE fp1_date END
		,fp1_time = CASE WHEN fp1_time IN ('N','\\N') THEN NULL ELSE fp1_date END
		,fp2_date = CASE WHEN fp2_date IN ('N','\\N') THEN NULL ELSE fp2_date END
		,fp2_time = CASE WHEN fp2_time IN ('N','\\N') THEN NULL ELSE fp2_time END
		,fp3_date = CASE WHEN fp3_date IN ('N','\\N') THEN NULL ELSE fp3_date END
		,fp3_time = CASE WHEN fp3_time IN ('N','\\N') THEN NULL ELSE fp3_time END
		,quali_date = CASE WHEN quali_date IN ('N','\\N') THEN NULL ELSE quali_date END
		,quali_time = CASE WHEN quali_time IN ('N','\\N') THEN NULL ELSE quali_time END
		,sprint_date = CASE WHEN sprint_date IN ('N','\\N') THEN NULL ELSE sprint_date END
		,sprint_time = CASE WHEN sprint_time IN ('N','\\N') THEN NULL ELSE sprint_time END
	WHERE raceID < 1061;

-- Altering pit_stops table 

ALTER TABLE pit_stops
	MODIFY COLUMN time TIME;

ALTER TABLE pit_stops
	MODIFY COLUMN duration FLOAT;  

-- Inserting missing rows from constructor_standings

INSERT INTO constructor_standings(
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
	MODIFY COLUMN q1 TIME
	,MODIFY COLUMN q2 TIME
	,MODIFY COLUMN q3 TIME; 
    
-- Creating drivers table and inserting around 800 rows of data. Again, showcased a few rows of the full query to save space. After inserting data, I cleared NULL values that were standard in the Excel files.

CREATE TABLE drivers(
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
	SET	driverRef= CASE WHEN driverRef = '\\N' THEN NULL ELSE driverRef END
		,number = CASE WHEN number = '\\N' THEN NULL ELSE number END
		,code = CASE WHEN code = '\\N' THEN NULL ELSE code END
		,forename = CASE WHEN forename = '\\N' THEN NULL ELSE forename END
		,surname = CASE WHEN surname = '\\N' THEN NULL ELSE surname END
		,nationality = CASE WHEN nationality = '\\N' THEN NULL ELSE nationality END
		,url = CASE WHEN url = '\\N' THEN NULL ELSE url END; 
    
-- Similar to the table above, I created circuits table and inserted about 80 rows of data. Again, showcased a few rows of the full query to save space. After inserting data, I cleared NULL values that were standard in the Excel files.

CREATE TABLE circuits (
	circuitId INT
    ,circuitRef TEXT
    ,name TEXT
    ,location TEXT
    ,country TEXT
    ,lat FLOAT
    ,lng FLOAT
    ,alt TEXT
    ,url TEXT);

INSERT INTO circuits(
	circuitId
    ,circuitRef
    ,name
    ,location
    ,country
    ,lat
    ,lng
    ,alt
    ,url)
VALUES
	(1, 'albert_park', 'Albert Park Grand Prix Circuit', 'Melbourne', 'Australia', -37.8497, 144.968, 10, 'http://en.wikipedia.org/wiki/Melbourne_Grand_Prix_Circuit'),
	(2, 'sepang', 'Sepang International Circuit', 'Kuala Lumpur', 'Malaysia', 2.76083, 101.738, 18, 'http://en.wikipedia.org/wiki/Sepang_International_Circuit'),
	(3, 'bahrain', 'Bahrain International Circuit', 'Sakhir', 'Bahrain', 26.0325, 50.5106, 7, 'http://en.wikipedia.org/wiki/Bahrain_International_Circuit'),
	(4, 'catalunya', 'Circuit de Barcelona-Catalunya', 'Montmelo', 'Spain', 41.57, 2.26111, 109, 'http://en.wikipedia.org/wiki/Circuit_de_Barcelona-Catalunya'),
	(5, 'istanbul', 'Istanbul Park', 'Istanbul', 'Turkey', 40.9517, 29.405, 130, 'http://en.wikipedia.org/wiki/Istanbul_Park'),
	(6, 'monaco', 'Circuit de Monaco', 'Monte-Carlo', 'Monaco', 43.7347, 7.42056, 7, 'http://en.wikipedia.org/wiki/Circuit_de_Monaco'),
	(7, 'villeneuve', 'Circuit Gilles Villeneuve', 'Montreal', 'Canada', 45.5, -73.5228, 13, 'http://en.wikipedia.org/wiki/Circuit_Gilles_Villeneuve'),
	(8, 'magny_cours', 'Circuit de Nevers Magny-Cours', 'Magny Cours', 'France', 46.8642, 3.16361, 228, 'http://en.wikipedia.org/wiki/Circuit_de_Nevers_Magny-Cours'),
	(9, 'silverstone', 'Silverstone Circuit', 'Silverstone', 'UK', 52.0786, -1.01694, 153, 'http://en.wikipedia.org/wiki/Silverstone_Circuit'),
	(10, 'hockenheimring', 'Hockenheimring', 'Hockenheim', 'Germany', 49.3278, 8.56583, 103, 'http://en.wikipedia.org/wiki/Hockenheimring'),
	(11, 'hungaroring', 'Hungaroring', 'Budapest', 'Hungary', 47.5789, 19.2486, 264, 'http://en.wikipedia.org/wiki/Hungaroring'),
	(12, 'valencia', 'Valencia Street Circuit', 'Valencia', 'Spain', 39.4589, -0.331667, 4, 'http://en.wikipedia.org/wiki/Valencia_Street_Circuit'),
	(13, 'spa', 'Circuit de Spa-Francorchamps', 'Spa', 'Belgium', 50.4372, 5.97139, 401, 'http://en.wikipedia.org/wiki/Circuit_de_Spa-Francorchamps'),
	(14, 'monza', 'Autodromo Nazionale di Monza', 'Monza', 'Italy', 45.6156, 9.28111, 162, 'http://en.wikipedia.org/wiki/Autodromo_Nazionale_Monza'),
	(15, 'marina_bay', 'Marina Bay Street Circuit', 'Marina Bay', 'Singapore', 1.2914, 103.864, 18, 'http://en.wikipedia.org/wiki/Marina_Bay_Street_Circuit'),
	(16, 'fuji', 'Fuji Speedway', 'Oyama', 'Japan', 35.3717, 138.927, 583, 'http://en.wikipedia.org/wiki/Fuji_Speedway'),
	(17, 'shanghai', 'Shanghai International Circuit', 'Shanghai', 'China', 31.3389, 121.22, 5, 'http://en.wikipedia.org/wiki/Shanghai_International_Circuit'),
	(18, 'interlagos', 'Autodromo Jose Carlos Pace', 'Sao Paolo', 'Brazil', -23.7036, -46.6997, 785, 'http://en.wikipedia.org/wiki/Aut%C3%B3dromo_Jos%C3%A9_Carlos_Pace'),
	(19, 'indianapolis', 'Indianapolis Motor Speedway', 'Indianapolis', 'USA', 39.795, -86.2347, 223, 'http://en.wikipedia.org/wiki/Indianapolis_Motor_Speedway'),
	(20, 'nurburgring', 'Nurburgring', 'Nurnburg', 'Germany', 50.3356, 6.9475, 578, 'http://en.wikipedia.org/wiki/N%C3%BCrburgring'),
	(21, 'imola', 'Autodromo Enzo e Dino Ferrari', 'Imola', 'Italy', 44.3439, 11.7167, 37, 'http://en.wikipedia.org/wiki/Autodromo_Enzo_e_Dino_Ferrari'),
	(22, 'suzuka', 'Suzuka Circuit', 'Suzuka', 'Japan', 34.8431, 136.541, 45, 'http://en.wikipedia.org/wiki/Suzuka_Circuit'),
	(24, 'yas_marina', 'Yas Marina Circuit', 'Abu Dhabi', 'UAE', 24.4672, 54.6031, 3, 'http://en.wikipedia.org/wiki/Yas_Marina_Circuit'),
	(25, 'galvez', 'Autodromo Juan y Oscar Galvez', 'Buenos Aires', 'Argentina', -34.6943, -58.4593, 8, 'http://en.wikipedia.org/wiki/Aut%C3%B3dromo_Oscar_Alfredo_G%C3%A1lvez'),
	(26, 'jerez', 'Circuito de Jerez', 'Jerez de la Frontera', 'Spain', 36.7083, -6.03417, 37, 'http://en.wikipedia.org/wiki/Circuito_Permanente_de_Jerez'),
	(27, 'estoril', 'Autodromo do Estoril', 'Estoril', 'Portugal', 38.7506, -9.39417, 130, 'http://en.wikipedia.org/wiki/Aut%C3%B3dromo_do_Estoril'),
	(28, 'okayama', 'Okayama International Circuit', 'Okayama', 'Japan', 34.915, 134.221, 266, 'http://en.wikipedia.org/wiki/TI_Circuit'),
	(29, 'adelaide', 'Adelaide Street Circuit', 'Adelaide', 'Australia', -34.9272, 138.617, 58, 'http://en.wikipedia.org/wiki/Adelaide_Street_Circuit'),
	(30, 'kyalami', 'Kyalami', 'Midrand', 'South Africa', -25.9894, 28.0767, 1460, 'http://en.wikipedia.org/wiki/Kyalami'),
	(31, 'donington', 'Donington Park', 'Castle Donington', 'UK', 52.8306, -1.37528, 88, 'http://en.wikipedia.org/wiki/Donington_Park'),
	(32, 'rodriguez', 'Autodromo Hermanos Rodriguez', 'Mexico City', 'Mexico', 19.4042, -99.0907, 2227, 'http://en.wikipedia.org/wiki/Aut%C3%B3dromo_Hermanos_Rodr%C3%ADguez'),
	(33, 'phoenix', 'Phoenix street circuit', 'Phoenix', 'USA', 33.4479, -112.075, 345, 'http://en.wikipedia.org/wiki/Phoenix_street_circuit'),
	(34, 'ricard', 'Circuit Paul Ricard', 'Le Castellet', 'France', 43.2506, 5.79167, 432, 'http://en.wikipedia.org/wiki/Paul_Ricard_Circuit'),
	(35, 'yeongam', 'Korean International Circuit', 'Yeongam County', 'Korea', 34.7333, 126.417, 0, 'http://en.wikipedia.org/wiki/Korean_International_Circuit'),
	(36, 'jacarepagua', 'Autodromo Internacional Nelson Piquet', 'Rio de Janeiro', 'Brazil', -22.9756, -43.395, 1126, 'http://en.wikipedia.org/wiki/Aut%C3%B3dromo_Internacional_Nelson_Piquet'),
	(37, 'detroit', 'Detroit Street Circuit', 'Detroit', 'USA', 42.3298, -83.0401, 177, 'http://en.wikipedia.org/wiki/Detroit_street_circuit'),
	(38, 'brands_hatch', 'Brands Hatch', 'Kent', 'UK', 51.3569, 0.263056, 145, 'http://en.wikipedia.org/wiki/Brands_Hatch'),
	(39, 'zandvoort', 'Circuit Park Zandvoort', 'Zandvoort', 'Netherlands', 52.3888, 4.54092, 6, 'http://en.wikipedia.org/wiki/Circuit_Zandvoort'),
	(40, 'zolder', 'Zolder', 'Heusden-Zolder', 'Belgium', 50.9894, 5.25694, 36, 'http://en.wikipedia.org/wiki/Zolder'),
	(41, 'dijon', 'Dijon-Prenois', 'Dijon', 'France', 47.3625, 4.89913, 484, 'http://en.wikipedia.org/wiki/Dijon-Prenois'),
	(42, 'dallas', 'Fair Park', 'Dallas', 'USA', 32.7774, -96.7587, 139, 'http://en.wikipedia.org/wiki/Fair_Park'),
	(43, 'long_beach', 'Long Beach', 'California', 'USA', 33.7651, -118.189, 12, 'http://en.wikipedia.org/wiki/Long_Beach,_California'),
	(44, 'las_vegas', 'Las Vegas Street Circuit', 'Nevada', 'USA', 36.1162, -115.174, 639, 'http://en.wikipedia.org/wiki/Las_Vegas_Street_Circuit'),
	(45, 'jarama', 'Jarama', 'Madrid', 'Spain', 40.6171, -3.58558, 609, 'http://en.wikipedia.org/wiki/Circuito_Permanente_Del_Jarama'),
	(46, 'watkins_glen', 'Watkins Glen', 'New York State', 'USA', 42.3369, -76.9272, 485, 'http://en.wikipedia.org/wiki/Watkins_Glen_International'),
	(47, 'anderstorp', 'Scandinavian Raceway', 'Anderstorp', 'Sweden', 57.2653, 13.6042, 153, 'http://en.wikipedia.org/wiki/Scandinavian_Raceway'),
	(48, 'mosport', 'Mosport International Raceway', 'Ontario', 'Canada', 44.0481, -78.6756, 332, 'http://en.wikipedia.org/wiki/Mosport'),
	(49, 'montjuic', 'Montjuic', 'Barcelona', 'Spain', 41.3664, 2.15167, 79, 'http://en.wikipedia.org/wiki/Montju%C3%AFc_circuit'),
	(50, 'nivelles', 'Nivelles-Baulers', 'Brussels', 'Belgium', 50.6211, 4.32694, 139, 'http://en.wikipedia.org/wiki/Nivelles-Baulers'),
	(51, 'charade', 'Charade Circuit', 'Clermont-Ferrand', 'France', 45.7472, 3.03889, 790, 'http://en.wikipedia.org/wiki/Charade_Circuit'),
	(52, 'tremblant', 'Circuit Mont-Tremblant', 'Quebec', 'Canada', 46.1877, -74.6099, 214, 'http://en.wikipedia.org/wiki/Circuit_Mont-Tremblant'),
	(53, 'essarts', 'Rouen-Les-Essarts', 'Rouen', 'France', 49.3306, 1.00458, 81, 'http://en.wikipedia.org/wiki/Rouen-Les-Essarts'),
	(54, 'lemans', 'Le Mans', 'Le Mans', 'France', 47.95, 0.224231, 67, 'http://en.wikipedia.org/wiki/Circuit_de_la_Sarthe#Bugatti_Circuit'),
	(55, 'reims', 'Reims-Gueux', 'Reims', 'France', 49.2542, 3.93083, 88, 'http://en.wikipedia.org/wiki/Reims-Gueux'),
	(56, 'george', 'Prince George Circuit', 'Eastern Cape Province', 'South Africa', -33.0486, 27.8736, 15, 'http://en.wikipedia.org/wiki/Prince_George_Circuit'),
	(57, 'zeltweg', 'Zeltweg', 'Styria', 'Austria', 47.2039, 14.7478, 676, 'http://en.wikipedia.org/wiki/Zeltweg_Airfield'),
	(58, 'aintree', 'Aintree', 'Liverpool', 'UK', 53.4769, -2.94056, 20, 'http://en.wikipedia.org/wiki/Aintree_Motor_Racing_Circuit'),
	(59, 'boavista', 'Circuito da Boavista', 'Oporto', 'Portugal', 41.1705, -8.67325, 28, 'http://en.wikipedia.org/wiki/Circuito_da_Boavista'),
	(60, 'riverside', 'Riverside International Raceway', 'California', 'USA', 33.937, -117.273, 470, 'http://en.wikipedia.org/wiki/Riverside_International_Raceway'),
	(61, 'avus', 'AVUS', 'Berlin', 'Germany', 52.4806, 13.2514, 53, 'http://en.wikipedia.org/wiki/AVUS'),
	(62, 'monsanto', 'Monsanto Park Circuit', 'Lisbon', 'Portugal', 38.7197, -9.20306, 158, 'http://en.wikipedia.org/wiki/Monsanto_Park_Circuit'),
	(63, 'sebring', 'Sebring International Raceway', 'Florida', 'USA', 27.4547, -81.3483, 18, 'http://en.wikipedia.org/wiki/Sebring_Raceway'),
	(64, 'ain-diab', 'Ain Diab', 'Casablanca', 'Morocco', 33.5786, -7.6875, 19, 'http://en.wikipedia.org/wiki/Ain-Diab_Circuit'),
	(65, 'pescara', 'Pescara Circuit', 'Pescara', 'Italy', 42.475, 14.1508, 129, 'http://en.wikipedia.org/wiki/Pescara_Circuit'),
	(66, 'bremgarten', 'Circuit Bremgarten', 'Bern', 'Switzerland', 46.9589, 7.40194, 551, 'http://en.wikipedia.org/wiki/Circuit_Bremgarten'),
	(67, 'pedralbes', 'Circuit de Pedralbes', 'Barcelona', 'Spain', 41.3903, 2.11667, 85, 'http://en.wikipedia.org/wiki/Pedralbes_Circuit'),
	(68, 'buddh', 'Buddh International Circuit', 'Uttar Pradesh', 'India', 28.3487, 77.5331, 194, 'http://en.wikipedia.org/wiki/Buddh_International_Circuit'),
	(69, 'americas', 'Circuit of the Americas', 'Austin', 'USA', 30.1328, -97.6411, 161, 'http://en.wikipedia.org/wiki/Circuit_of_the_Americas'),
	(70, 'red_bull_ring', 'Red Bull Ring', 'Spielberg', 'Austria', 47.2197, 14.7647, 678, 'http://en.wikipedia.org/wiki/Red_Bull_Ring'),
	(71, 'sochi', 'Sochi Autodrom', 'Sochi', 'Russia', 43.4057, 39.9578, 2, 'http://en.wikipedia.org/wiki/Sochi_Autodrom'),
	(73, 'baku', 'Baku City Circuit', 'Baku', 'Azerbaijan', 40.3725, 49.8533, -7, 'http://en.wikipedia.org/wiki/Baku_City_Circuit'),
	(75, 'portimao', 'Autodromo Internacional do Algarve', 'Portimao', 'Portugal', 37.227, -8.6267, 108, 'http://en.wikipedia.org/wiki/Algarve_International_Circuit'),
	(76, 'mugello', 'Autodromo Internazionale del Mugello', 'Mugello', 'Italy', 43.9975, 11.3719, 255, 'http://en.wikipedia.org/wiki/Mugello_Circuit'),
	(77, 'jeddah', 'Jeddah Corniche Circuit', 'Jeddah', 'Saudi Arabia', 21.6319, 39.1044, 15, 'http://en.wikipedia.org/wiki/Jeddah_Street_Circuit'),
	(78, 'losail', 'Losail International Circuit', 'Al Daayen', 'Qatar', 25.49, 51.4542, '\\N', 'http://en.wikipedia.org/wiki/Losail_International_Circuit'),
	(79, 'miami', 'Miami International Autodrome', 'Miami', 'USA', 25.9581, -80.2389, '\\N', 'http://en.wikipedia.org/wiki/Miami_International_Autodrome'),
	(80, 'vegas', 'Las Vegas Strip Street Circuit', 'Las Vegas', 'United States', 36.1147, -115.173, '\\N', 'https://en.wikipedia.org/wiki/Las_Vegas_Grand_Prix#Circuit');

UPDATE circuits 
	SET circuitRef = CASE WHEN circuitRef = '\\N' THEN NULL ELSE circuitRef END
		,name = CASE WHEN name = '\\N' THEN NULL ELSE name END
		,location = CASE WHEN name = '\\N' THEN NULL ELSE location END
		,country = CASE WHEN country = '\\N' THEN NULL ELSE country END
		,alt = CASE WHEN alt = '\\N' THEN NULL ELSE alt END
		,url = CASE WHEN url = '\\N' THEN NULL ELSE url END; 
    
-- Lastly, I created the results table due to previously stated reasons - specicially the import falling with about 100,000 rows. I quickly modified columns to accept the Excel formatting conditions with the custom functions and then changed to appropriate 
-- data types once all the rows were imported. This table has about 250,000 rows. I added 10 below for sake of space. 

CREATE TABLE results(
	resultId INT
	,raceId INT
	,driverId INT
	,constructorId INT 
	,number INT
	,grid INT
	,position INT
	,positionText TEXT
	,positionOrder INT
	,points INT
	,laps INT
	,fastestLapTime TIME
	,fastestLapSpeed FLOAT
	,statusId INT); 

ALTER TABLE results
	MODIFY COLUMN position TEXT
	,MODIFY COLUMN number TEXT
	,MODIFY COLUMN fastestLapTime TEXT
	,MODIFY COLUMN fastestLapSpeed TEXT; 

INSERT INTO results(	
	resultId
	,raceId
	,driverId
	,constructorId
	,number
	,grid
	,position
	,positionText
	,positionOrder
	,points
	,laps
	,fastestLapTime
	,fastestLapSpeed
	,statusId)
VALUES
	(1, 18, 1, 1, '22', 1, '1', '1', 1, 10, 58, '01:27.452', '218.3', 1),
	(2, 18, 2, 2, '3', 5, '2', '2', 2, 8, 58, '01:27.739', '217.586', 1),
	(3, 18, 3, 3, '7', 7, '3', '3', 3, 6, 58, '01:28.090', '216.719', 1),
	(4, 18, 4, 4, '5', 11, '4', '4', 4, 5, 58, '01:28.603', '215.464', 1),
	(5, 18, 5, 1, '23', 3, '5', '5', 5, 4, 58, '01:27.418', '218.385', 1),
	(6, 18, 6, 3, '8', 13, '6', '6', 6, 3, 57, '01:29.639', '212.974', 11),
	(7, 18, 7, 5, '14', 17, '7', '7', 7, 2, 55, '01:29.534', '213.224', 5),
	(8, 18, 8, 6, '1', 15, '8', '8', 8, 1, 53, '01:27.903', '217.18', 5),
	(9, 18, 9, 2, '4', 2, '\\N', 'R', 9, 0, 47, '01:28.753', '215.1', 4),
	(10, 18, 10, 7, '12', 18, '\\N', 'R', 10, 0, 43, '01:29.558', '213.166', 3);

UPDATE results
	SET number = CASE WHEN number = '\\N' THEN NULL ELSE number END
		,positionText = CASE WHEN positionText = '\\N' THEN NULL ELSE positionText END
		,position = CASE WHEN position = '\\N' THEN NULL ELSE position END
		,fastestLapTime = CASE WHEN fastestLapTime = '\\N' THEN NULL ELSE fastestLapTime END
		,fastestLapSpeed = CASE WHEN fastestLapSpeed = '\\N' THEN NULL ELSE fastestLapSpeed END;
    
ALTER TABLE results
	MODIFY COLUMN number INT
	,MODIFY COLUMN position INT
	,MODIFY COLUMN fastestLapTime TIME
	,MODIFY COLUMN fastestLapSpeed FLOAT; 
    
-- Now with all the tables in and formatted it's time to do the fun part, data exploration! 

-- With the Saudi Arabian Grand Prix just happening, I wanted a reminder on what happened last year and how the table was looking. Looks like Ferrari were off to a hot start!

SELECT 
	cs.constructorId
    ,c.name
    ,c.nationality
    ,cs.raceId
    ,cs.points
    ,cs.position
    ,cs.wins
FROM constructor_standings AS cs
	INNER JOIN constructors AS c
		ON cs.constructorId = c.constructorId
	WHERE cs.raceId = '1075'
    ORDER BY cs.points DESC;
    
-- Now let's add in drivers with constructors as well as grid start and final position so we can get a 1,000 ft view of what happened during the race. Tough race for Fernando! Started P7 ended with a Water Cooling fault. 

WITH saudi_standings AS(
SELECT 
	re.constructorId AS CON_ID
    ,c.name AS CON_NAME
    ,re.driverId AS D_ID
    ,re.grid AS GRID
    ,re.position AS POS
    ,re.positionText AS POS_TXT
    ,re.points AS POINTS
    ,st.status AS STATUS
FROM results AS re
	LEFT JOIN constructors AS c
		ON c.constructorId = re.constructorId
	LEFT JOIN status AS st
		ON re.statusId = st.statusId
	WHERE raceId = '1075')
SELECT
    CON_NAME
    ,CONCAT(d.forename, " ", d.surname) AS DRIVR
    ,GRID
    ,POS
    ,POS_TXT
    ,POINTS
    ,STATUS
FROM saudi_standings AS ss
	LEFT JOIN drivers AS d
		ON ss.D_ID = d.driverId
	ORDER BY POINTS DESC; 

-- Now, lets add another CTE to get the points total per constructor for the weekend in Saudi Arabia. Red Bull caught up to Ferrari after a hot week 1 in Bahrain!

WITH saudi_standings AS(
SELECT 
	re.constructorId AS CON_ID
    ,c.name AS CON_NAME
    ,re.driverId AS D_ID
    ,re.grid AS GRID
    ,re.position AS POS
    ,re.positionText AS POS_TXT
    ,re.points AS POINTS
    ,st.status AS STATUS
FROM results AS re
	LEFT JOIN constructors AS c
		ON c.constructorId = re.constructorId
	LEFT JOIN status AS st
		ON re.statusId = st.statusId
	WHERE raceId = '1075')
,
	saudi_standings_complete AS(
SELECT
    CON_NAME
    ,CONCAT(d.forename, " ", d.surname) AS DRIVR
    ,GRID
    ,POS
    ,POS_TXT
    ,POINTS
    ,STATUS
FROM saudi_standings AS ss
	LEFT JOIN drivers AS d
		ON ss.D_ID = d.driverId
	ORDER BY POINTS DESC)
SELECT
	CON_NAME
    ,SUM(POINTS) POINTS_TOTAL
FROM saudi_standings_complete
	GROUP BY CON_NAME
    ORDER BY POINTS_TOTAL DESC; 

-- Next I wanted to get a full view of the grid for all the races. I wanted to see starting positions, ending positions, and the average movement during the race. Additionally, I wanted to showcase and add 
-- a rank window function to get a clean view of the final racing order even though it's also available via END_AVG. :)

SELECT
	re.driverId AS D_ID
    ,re.raceId AS RACE_ID
    ,MAX(r.name) AS RACE_NAME
    ,MAX(CONCAT(d.forename, " ", d.surname)) AS NAME
    ,MAX(nationality) AS NATIONALITY
    ,ROUND(AVG(re.grid),0) AS START_AVG
    ,ROUND(AVG(re.position),0) AS END_AVG
    ,ROUND(AVG(re.points),0) AS POINTS_AVG
    ,ROUND(AVG(re.grid - re.position),0) AS AVG_MOVE
    ,CASE WHEN ROUND(AVG(re.position),0) IS NOT NULL THEN DENSE_RANK () 
		OVER (PARTITION BY re.raceID, CASE WHEN ROUND(AVG(re.position),0) IS NULL THEN 1 ELSE 0 END 
			ORDER BY ROUND(AVG(re.position),0)) ELSE NULL END AS RACE_ORDER
FROM results AS re
	LEFT JOIN drivers AS d
		ON re.driverId = d.driverId
	LEFT JOIN races AS r
		ON re.raceId = r.raceId
	GROUP BY re.driverId, re.raceId
    ORDER BY re.raceId DESC, ROUND(AVG(re.points),0) DESC;
    
    -- Now I wanted to get a complete view of all drivers, their total points, and their average starting point on the grid as well as where they finished. I topped it off with their average grid movement
    -- to showcase drivers who, on average, improved their position during the race.
    
    WITH overall_stats AS(
    SELECT
	re.driverId AS D_ID
    ,re.raceId AS RACE_ID
    ,MAX(r.name) AS RACE_NAME
    ,MAX(CONCAT(d.forename, " ", d.surname)) AS NAME
    ,MAX(nationality) AS NATIONALITY
    ,ROUND(AVG(re.grid),0) AS START_AVG
    ,ROUND(AVG(re.position),0) AS END_AVG
    ,ROUND(AVG(re.points),0) AS POINTS_AVG
    ,ROUND(AVG(re.grid - re.position),0) AS AVG_MOVE
    ,CASE WHEN ROUND(AVG(re.position),0) IS NOT NULL THEN DENSE_RANK () 
		OVER (PARTITION BY re.raceID, CASE WHEN ROUND(AVG(re.position),0) IS NULL THEN 1 ELSE 0 END 
			ORDER BY ROUND(AVG(re.position),0)) ELSE NULL END AS RACE_ORDER
FROM results AS re
	LEFT JOIN drivers AS d
		ON re.driverId = d.driverId
	LEFT JOIN races AS r
		ON re.raceId = r.raceId
	GROUP BY re.driverId, re.raceId
    ORDER BY re.raceId DESC, ROUND(AVG(re.points),0) DESC)
    SELECT
		NAME
        ,NATIONALITY
        ,SUM(POINTS_AVG) AS TOTAL_POINTS
        ,ROUND(AVG(START_AVG),2) AS START
        ,ROUND(AVG(END_AVG),2) AS END
        ,ROUND(AVG(AVG_MOVE),2) AS GRID_MOVEMENT
	FROM overall_stats
    GROUP BY 1,2
    ORDER BY 3 DESC;
    
    -- Next I wanted to get the complete view of the racing order and the reasons behind any DNFs. Here we'll be able to see laps completed and status. Mr. Carlos Sainz 
    -- had a tough US Grand Prix. I was lucky enough to attend and did in fact see him start pole and end up not even completing a lap due to damage with George Russell. 
SELECT 
	re.raceId
	,r.name AS RACE_NAME
    ,CONCAT(d.forename, " ", d.surname) AS DRIVER
    ,c.name AS CONSTRUCTOR
    ,re.number AS DRIVER_NUM
    ,re.grid AS START
    ,re.positionText AS END_TXT
    ,COALESCE(CASE WHEN re.position IS NOT NULL THEN DENSE_RANK() 
		OVER (PARTITION BY re.raceId, CASE WHEN re.position IS NULL THEN 1 ELSE 0 END
			ORDER BY re.position) ELSE NULL END,'DNF') AS RACE_ORDER 
    ,re.points AS POINTS
    ,re.laps AS LAPS
    ,s.status AS STATUS
FROM results AS re
	LEFT JOIN races AS r
		ON re.raceId = r.raceId
	LEFT JOIN drivers AS d
		ON re.driverId = d.driverId
	LEFT JOIN constructors AS c
		ON re.constructorId = c.constructorId
	LEFT JOIN status AS s
		ON re.statusId = s.statusId
	ORDER BY raceId DESC, re.points DESC;
