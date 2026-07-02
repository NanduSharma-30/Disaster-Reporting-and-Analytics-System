CREATE DATABASE DRIROS;
USE DRIROS;
CREATE TABLE countries
(
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(100) NOT NULL,
    country_code CHAR(3) NOT NULL UNIQUE,
    continent VARCHAR(50) NOT NULL
);
CREATE TABLE states
(
    state_id INT PRIMARY KEY AUTO_INCREMENT,
    country_id INT NOT NULL,
    state_name VARCHAR(100) NOT NULL,
    state_code CHAR(3) NOT NULL,

    FOREIGN KEY (country_id)
    REFERENCES countries(country_id)
);

CREATE TABLE cities
(
    city_id INT PRIMARY KEY AUTO_INCREMENT,
    state_id INT NOT NULL,
    city_name VARCHAR(50) NOT NULL,
    population INT NOT NULL,

    FOREIGN KEY (state_id)
    REFERENCES states(state_id)
);

CREATE TABLE disasters
(
    disaster_id INT PRIMARY KEY AUTO_INCREMENT,
    city_id INT NOT NULL,
    disaster_type VARCHAR(50) NOT NULL,
    disaster_date DATE NOT NULL,
    severity_level VARCHAR(20) NOT NULL,
    estimated_loss DECIMAL(10,2) NOT NULL,
    description TEXT NOT NULL,

    FOREIGN KEY (city_id)
    REFERENCES cities(city_id)
);

CREATE TABLE shelters
(
    shelter_id INT PRIMARY KEY AUTO_INCREMENT,
    city_id INT NOT NULL,
    shelter_name VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    current_occupancy INT NOT NULL,

    FOREIGN KEY (city_id)
    REFERENCES cities(city_id)
);

CREATE TABLE rescue_teams
(
    team_id INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    team_size INT NOT NULL,
    contact_number VARCHAR(15) NOT NULL
);

CREATE TABLE rescue_missions
(
    mission_id INT PRIMARY KEY AUTO_INCREMENT,
    disaster_id INT NOT NULL,
    team_id INT NOT NULL,
    mission_start DATETIME NOT NULL,
    mission_end DATETIME,
    people_rescued INT NOT NULL,

    FOREIGN KEY (disaster_id)
    REFERENCES disasters(disaster_id),

    FOREIGN KEY (team_id)
    REFERENCES rescue_teams(team_id)
);

CREATE TABLE victims
(
    victim_id INT PRIMARY KEY AUTO_INCREMENT,
    disaster_id INT NOT NULL,
    hospital_id INT,
    victim_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender CHAR(1) NOT NULL,
    injury_severity VARCHAR(20) NOT NULL,
    status VARCHAR(20) NOT NULL,

    FOREIGN KEY (disaster_id)
    REFERENCES disasters(disaster_id),

    FOREIGN KEY (hospital_id)
    REFERENCES hospitals(hospital_id)
);

CREATE TABLE relief_supplies
(
    supply_id INT PRIMARY KEY AUTO_INCREMENT,
    disaster_id INT NOT NULL,
    supply_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    unit VARCHAR(20) NOT NULL,

    FOREIGN KEY (disaster_id)
    REFERENCES disasters(disaster_id)
);

CREATE TABLE donations
(
    donation_id INT PRIMARY KEY AUTO_INCREMENT,
    disaster_id INT NOT NULL,
    donor_name VARCHAR(100) NOT NULL,
    donation_amount DECIMAL(12,2) NOT NULL,
    donation_date DATE NOT NULL,

    FOREIGN KEY (disaster_id)
    REFERENCES disasters(disaster_id)
);

CREATE TABLE volunteers
(
    volunteer_id INT PRIMARY KEY AUTO_INCREMENT,
    disaster_id INT NOT NULL,
    volunteer_name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15) NOT NULL,
    assigned_role VARCHAR(100) NOT NULL,

    FOREIGN KEY (disaster_id)
    REFERENCES disasters(disaster_id)
);