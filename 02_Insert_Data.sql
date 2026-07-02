USE DRIROS;
INSERT INTO countries (country_name, country_code, continent)
VALUES
('India', 'IND', 'Asia'),
('Japan', 'JPN', 'Asia'),
('United States', 'USA', 'North America'),
('Australia', 'AUS', 'Oceania'),
('Indonesia', 'IDN', 'Asia');
select * from countries;

INSERT INTO states (country_id, state_name, state_code)
VALUES
-- India
(1, 'Karnataka', 'KAR'),
(1, 'Maharashtra', 'MAH'),
(1, 'Kerala', 'KER'),
(1, 'Tamil Nadu', 'TAM'),

-- Japan
(2, 'Tokyo', 'TOK'),
(2, 'Osaka', 'OSA'),
(2, 'Hokkaido', 'HOK'),
(2, 'Kyoto', 'KYO'),

-- USA
(3, 'California', 'CAL'),
(3, 'Texas', 'TEX'),
(3, 'Florida', 'FLO'),
(3, 'New York', 'NYK'),

-- Australia
(4, 'Queensland', 'QLD'),
(4, 'Victoria', 'VIC'),
(4, 'New South Wales', 'NSW'),
(4, 'Tasmania', 'TAS'),

-- Indonesia
(5, 'Java', 'JAV'),
(5, 'Bali', 'BAL'),
(5, 'Sumatra', 'SUM'),
(5, 'Sulawesi', 'SUL');

-- ==========================================
-- Insert Cities
-- ==========================================

INSERT INTO cities (state_id, city_name, population)
VALUES

-- Karnataka
(1, 'Bengaluru', 14000000),
(1, 'Mysuru', 1200000),

-- Maharashtra
(2, 'Mumbai', 20400000),
(2, 'Pune', 7500000),

-- Kerala
(3, 'Kochi', 680000),
(3, 'Thiruvananthapuram', 960000),

-- Tamil Nadu
(4, 'Chennai', 11200000),
(4, 'Coimbatore', 2200000),

-- Tokyo
(5, 'Shinjuku', 350000),
(5, 'Shibuya', 240000),

-- Osaka
(6, 'Osaka City', 2700000),
(6, 'Sakai', 820000),

-- Hokkaido
(7, 'Sapporo', 1970000),
(7, 'Hakodate', 250000),

-- Kyoto
(8, 'Kyoto City', 1450000),
(8, 'Uji', 180000),

-- California
(9, 'Los Angeles', 3900000),
(9, 'San Francisco', 880000),

-- Texas
(10, 'Houston', 2300000),
(10, 'Dallas', 1300000),

-- Florida
(11, 'Miami', 470000),
(11, 'Orlando', 320000),

-- New York
(12, 'New York City', 8400000),
(12, 'Buffalo', 280000),

-- Queensland
(13, 'Brisbane', 2600000),
(13, 'Gold Coast', 700000),

-- Victoria
(14, 'Melbourne', 5100000),
(14, 'Geelong', 270000),

-- New South Wales
(15, 'Sydney', 5300000),
(15, 'Newcastle', 320000),

-- Tasmania
(16, 'Hobart', 240000),
(16, 'Launceston', 90000),

-- Java
(17, 'Jakarta', 10600000),
(17, 'Bandung', 2500000),

-- Bali
(18, 'Denpasar', 900000),
(18, 'Ubud', 75000),

-- Sumatra
(19, 'Medan', 2400000),
(19, 'Palembang', 1700000),

-- Sulawesi
(20, 'Makassar', 1500000),
(20, 'Manado', 430000);

-- ==========================================
-- Insert Disasters
-- ==========================================

INSERT INTO disasters
(city_id, disaster_type, disaster_date, severity_level, estimated_loss, description)
VALUES
(1,'Flood','2023-07-12','High',2500000.00,'Heavy rainfall caused severe flooding'),
(2,'Landslide','2023-08-20','Medium',1200000.00,'Landslide blocked major roads'),
(3,'Flood','2024-06-15','Critical',8500000.00,'Urban flooding due to monsoon'),
(4,'Earthquake','2024-09-18','High',4200000.00,'Moderate earthquake damaged buildings'),
(5,'Earthquake','2023-05-10','Critical',15000000.00,'Major earthquake in Tokyo'),
(6,'Typhoon','2023-10-05','High',7200000.00,'Typhoon damaged coastal areas'),
(7,'Snowstorm','2024-01-18','Medium',2100000.00,'Heavy snowfall disrupted transport'),
(8,'Flood','2024-07-22','High',3500000.00,'River overflowed after heavy rain'),
(9,'Wildfire','2023-08-12','Critical',18000000.00,'Massive wildfire spread rapidly'),
(10,'Heatwave','2024-07-05','Medium',1000000.00,'Extreme temperatures affected citizens'),
(11,'Hurricane','2023-09-14','Critical',22000000.00,'Hurricane hit coastal region'),
(12,'Snowstorm','2024-02-08','Low',600000.00,'Minor snowstorm'),
(13,'Bushfire','2023-12-20','Critical',16000000.00,'Bushfire destroyed forests'),
(14,'Flood','2024-03-15','High',4300000.00,'Heavy rain flooded suburbs'),
(15,'Cyclone','2024-01-28','Critical',12000000.00,'Cyclone damaged infrastructure'),
(16,'Storm','2023-11-18','Medium',1800000.00,'Strong storm winds'),
(17,'Volcanic Eruption','2023-06-08','Critical',30000000.00,'Volcano erupted causing evacuations'),
(18,'Earthquake','2024-04-14','High',9800000.00,'Earthquake damaged buildings'),
(19,'Flood','2024-08-10','High',5200000.00,'Flood affected residential areas'),
(20,'Tsunami','2023-12-02','Critical',27000000.00,'Tsunami struck coastal region');

-- ==========================================
-- Insert Hospitals
-- ==========================================

INSERT INTO hospitals
(city_id, hospital_name, total_beds, available_beds)
VALUES
(1,'Manipal Hospital Bengaluru',1200,180),
(2,'Mysore Medical College Hospital',800,210),
(3,'KEM Hospital Mumbai',1500,320),
(4,'Ruby Hall Clinic Pune',950,140),
(5,'Aster Medcity Kochi',1000,260),
(6,'KIMS Hospital Trivandrum',900,190),
(7,'Apollo Hospital Chennai',1400,230),
(8,'PSG Hospital Coimbatore',850,175),
(9,'Tokyo General Hospital',1600,300),
(10,'Shibuya Medical Center',900,170),
(11,'Osaka University Hospital',1200,250),
(12,'Sakai Central Hospital',700,150),
(13,'Sapporo Medical Center',950,210),
(14,'Hakodate Hospital',650,120),
(15,'Kyoto City Hospital',1000,200),
(16,'Uji Medical Center',550,110),
(17,'Cedars-Sinai Medical Center',1800,350),
(18,'UCSF Medical Center',1500,290),
(19,'Houston Methodist Hospital',1700,330),
(20,'Baylor Medical Center Dallas',1400,270);

-- ==========================================
-- Insert Shelters
-- ==========================================

INSERT INTO shelters
(city_id, shelter_name, capacity, current_occupancy)
VALUES
(1,'Bengaluru Relief Camp',1000,820),
(2,'Mysuru Community Shelter',700,530),
(3,'Mumbai Emergency Camp',1800,1600),
(4,'Pune Central Shelter',900,610),
(5,'Kochi Flood Shelter',850,700),
(6,'Trivandrum Relief Camp',750,520),
(7,'Chennai Cyclone Shelter',1600,1450),
(8,'Coimbatore Relief Center',600,410),
(9,'Tokyo Emergency Shelter',2000,1700),
(10,'Shibuya Safe Center',900,640),
(11,'Osaka Rescue Camp',1500,1200),
(12,'Sakai Shelter',700,450),
(13,'Sapporo Winter Shelter',900,720),
(14,'Hakodate Community Camp',500,300),
(15,'Kyoto Relief Center',1100,870),
(16,'Uji Emergency Camp',550,360),
(17,'Los Angeles Shelter',1800,1500),
(18,'San Francisco Shelter',1200,980),
(19,'Houston Relief Center',1700,1450),
(20,'Dallas Community Shelter',1300,1000);

-- ==========================================
-- Insert Rescue Teams
-- ==========================================

INSERT INTO rescue_teams
(team_name, specialization, team_size, contact_number)
VALUES
('Alpha Response','Flood Rescue',40,'9876543210'),
('Bravo Rescue','Earthquake Rescue',35,'9876543211'),
('Charlie Force','Medical Support',30,'9876543212'),
('Delta Squad','Fire Rescue',28,'9876543213'),
('Echo Team','Cyclone Response',45,'9876543214'),
('Falcon Unit','Mountain Rescue',22,'9876543215'),
('Guardian Team','Urban Search',38,'9876543216'),
('Rapid Aid','Emergency Medical',26,'9876543217'),
('Phoenix Rescue','Wildfire Response',32,'9876543218'),
('Titan Rescue','Multi-Hazard Response',50,'9876543219');

-- ==========================================
-- Insert Rescue Missions
-- ==========================================

INSERT INTO rescue_missions
(disaster_id, team_id, mission_start, mission_end, people_rescued)
VALUES
(1,1,'2023-07-12 08:00:00','2023-07-12 18:30:00',120),
(2,6,'2023-08-20 07:30:00','2023-08-20 15:00:00',75),
(3,1,'2024-06-15 06:00:00','2024-06-15 20:00:00',240),
(4,2,'2024-09-18 09:00:00','2024-09-18 22:00:00',180),
(5,2,'2023-05-10 05:30:00','2023-05-10 21:00:00',350),
(6,5,'2023-10-05 06:30:00','2023-10-05 18:30:00',220),
(7,8,'2024-01-18 08:00:00','2024-01-18 17:00:00',95),
(8,1,'2024-07-22 07:00:00','2024-07-22 20:00:00',180),
(9,9,'2023-08-12 06:00:00','2023-08-12 23:00:00',410),
(10,10,'2024-07-05 09:00:00','2024-07-05 17:00:00',60);

-- ==========================================
-- Insert Victims
-- ==========================================

INSERT INTO victims
(disaster_id, hospital_id, victim_name, age, gender, injury_severity, status)
VALUES
(1,1,'Rahul Sharma',32,'M','Moderate','Recovered'),
(1,1,'Priya Nair',27,'F','Minor','Recovered'),
(2,2,'Arjun Kumar',45,'M','Severe','Under Treatment'),
(3,3,'Sneha Patel',30,'F','Critical','Recovered'),
(4,4,'Rohit Verma',40,'M','Moderate','Recovered'),
(5,9,'Kenji Sato',38,'M','Critical','Under Treatment'),
(6,11,'Yuki Tanaka',29,'F','Moderate','Recovered'),
(7,13,'Haruto Suzuki',52,'M','Minor','Recovered'),
(8,15,'Aiko Yamamoto',34,'F','Moderate','Recovered'),
(9,17,'John Smith',41,'M','Critical','Under Treatment');

-- ==========================================
-- Insert Relief Supplies
-- ==========================================

INSERT INTO relief_supplies
(disaster_id, supply_name, quantity, unit)
VALUES
(1,'Food Packets',5000,'Packets'),
(2,'Blankets',1000,'Pieces'),
(3,'Drinking Water',12000,'Liters'),
(4,'Medicines',800,'Boxes'),
(5,'Tents',400,'Units'),
(6,'Rice Bags',700,'Bags'),
(7,'Winter Jackets',900,'Pieces'),
(8,'Milk Powder',600,'Boxes'),
(9,'First Aid Kits',500,'Kits'),
(10,'Generators',30,'Units');

-- ==========================================
-- Insert Donations
-- ==========================================

INSERT INTO donations
(disaster_id, donor_name, donation_amount, donation_date)
VALUES
(1,'UNICEF',250000.00,'2023-07-13'),
(2,'Red Cross',150000.00,'2023-08-21'),
(3,'Google Foundation',500000.00,'2024-06-16'),
(4,'Microsoft',350000.00,'2024-09-19'),
(5,'WHO',800000.00,'2023-05-11'),
(6,'Amazon',200000.00,'2023-10-06'),
(7,'UNDP',100000.00,'2024-01-19'),
(8,'Reliance Foundation',180000.00,'2024-07-23'),
(9,'Tesla',600000.00,'2023-08-13'),
(10,'Infosys Foundation',220000.00,'2024-07-06');

-- ==========================================
-- Insert Volunteers
-- ==========================================

INSERT INTO volunteers
(disaster_id, volunteer_name, contact_number, assigned_role)
VALUES
(1,'Ankit Sharma','9876500001','Food Distribution'),
(2,'Neha Gupta','9876500002','Medical Assistance'),
(3,'Vikram Rao','9876500003','Rescue Support'),
(4,'Pooja Singh','9876500004','Shelter Management'),
(5,'Riya Mehta','9876500005','Medical Assistance'),
(6,'Karan Patel','9876500006','Logistics'),
(7,'Aman Verma','9876500007','Food Distribution'),
(8,'Divya Nair','9876500008','Volunteer Coordinator'),
(9,'Aditya Joshi','9876500009','Rescue Support'),
(10,'Sana Khan','9876500010','Shelter Management');

SELECT COUNT(*) FROM countries;
SELECT COUNT(*) FROM states;
SELECT COUNT(*) FROM cities;
SELECT COUNT(*) FROM disasters;
SELECT COUNT(*) FROM hospitals;
SELECT COUNT(*) FROM shelters;
SELECT COUNT(*) FROM rescue_teams;
SELECT COUNT(*) FROM rescue_missions;
SELECT COUNT(*) FROM victims;
SELECT COUNT(*) FROM relief_supplies;
SELECT COUNT(*) FROM donations;
SELECT COUNT(*) FROM volunteers;