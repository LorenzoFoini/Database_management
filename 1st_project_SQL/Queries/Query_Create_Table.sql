-- CREATE TABLES

-- Table for Fashion Designers
CREATE TABLE fashion_designers (
personal_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
surname VARCHAR(255) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
stage_name VARCHAR(255) NOT NULL,
career TEXT NOT NULL
);
-- Table for Fashion Models
CREATE TABLE fashion_models (
personal_ID INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
surname VARCHAR(255) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
height INT NOT NULL CHECK (height>0),
size ENUM('XXS', 'XS', 'S', 'M', 'L', 'XL', 'XXL') NOT NULL,
date_of_birth DATE NOT NULL,
fashion_designers_personal_id INT NOT NULL,
FOREIGN KEY (fashion_designers_personal_id) REFERENCES fashion_designers(personal_id) ON UPDATE CASCADE ON DELETE CASCADE
);
-- Table for Dresses
CREATE TABLE dresses (
id INT PRIMARY KEY AUTO_INCREMENT,
size ENUM('UNI', 'XXS', 'XS', 'S', 'M', 'L', 'XL', 'XXL') NOT NULL,
colour VARCHAR(50) NOT NULL,
production_time DECIMAL(5,2) NOT NULL CHECK (production_time>0),
fashion_models_personal_id INT NOT NULL,
FOREIGN KEY (fashion_models_personal_id) REFERENCES fashion_models(personal_id) ON UPDATE CASCADE ON DELETE CASCADE
);
-- Table for Fabrics
CREATE TABLE fabrics (
id INT PRIMARY KEY AUTO_INCREMENT,
price_per_square_meter DECIMAL(10,2) NOT NULL CHECK (price_per_square_meter>0),
name VARCHAR(255) NOT NULL
);
-- Table for Fashion Exhibitions
CREATE TABLE fashion_exhibitions (
id INT PRIMARY KEY AUTO_INCREMENT,
duration DECIMAL(5,2) NOT NULL CHECK (duration>0),
location_address VARCHAR(255) NOT NULL,
title VARCHAR(255) NOT NULL,
description TEXT NOT NULL
);
-- Table for Fashion Competitions
CREATE TABLE fashion_competitions (
id INT PRIMARY KEY AUTO_INCREMENT,
duration DECIMAL(5,2) NOT NULL CHECK (duration>0),
location_address VARCHAR(255) NOT NULL,
title VARCHAR(255) NOT NULL,
description TEXT NOT NULL,
year YEAR UNIQUE NOT NULL
);
-- Table for Partake To (Relationship between Fashion Exhibitions and Fashion Models)
CREATE TABLE partake_to (
fashion_exhibitions_id INT,
fashion_models_personal_id INT,
PRIMARY KEY (fashion_exhibitions_id, fashion_models_personal_id),
FOREIGN KEY (fashion_exhibitions_id) REFERENCES fashion_exhibitions(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (fashion_models_personal_id) REFERENCES fashion_models(personal_id) ON UPDATE CASCADE ON DELETE CASCADE
);
-- Table for Shown In (Relationship between Fashion Competitions and Dresses)
CREATE TABLE shown_in (
fashion_competitions_id INT,
dresses_id INT,
winner BOOLEAN NOT NULL,
PRIMARY KEY (fashion_competitions_id, dresses_id),
FOREIGN KEY (fashion_competitions_id) REFERENCES fashion_competitions(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (dresses_id) REFERENCES dresses(id) ON UPDATE CASCADE ON DELETE CASCADE
);
-- Table for Composed Of (Relationship between Dresses and Fabrics)
CREATE TABLE composed_of (
dresses_id INT,
fabrics_id INT,
amount INT NOT NULL CHECK (amount>0 AND amount<=100),
PRIMARY KEY (dresses_id, fabrics_id),
FOREIGN KEY (dresses_id) REFERENCES dresses(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (fabrics_id) REFERENCES fabrics(id) ON UPDATE CASCADE ON DELETE CASCADE
);
-- Table for Made Of (Self-Referencing Relationship between Fabrics)
CREATE TABLE made_of (
fabrics_id1 INT,
fabrics_id2 INT,
amount INT NOT NULL CHECK (amount>0 AND amount<=100),
PRIMARY KEY (fabrics_id1, fabrics_id2),
FOREIGN KEY (fabrics_id1) REFERENCES fabrics(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (fabrics_id2) REFERENCES fabrics(id) ON UPDATE CASCADE ON DELETE CASCADE
);
-- Table for Properties of Fabrics (Relationship between Fabrics and Properties)
CREATE TABLE properties_of_fabrics (
fabrics_id INT,
properties_name VARCHAR(255),
PRIMARY KEY (fabrics_id, properties_name),
FOREIGN KEY (fabrics_id) REFERENCES fabrics(id) ON UPDATE CASCADE ON DELETE CASCADE
);