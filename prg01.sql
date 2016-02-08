#Chris Sheehan
#programming assignment 1

#Creates Database called prg01
#CREATE DATABASE prg01;

#Chooses the Database prg01 to use
USE prg01;

#Makes sure there is no existing table called astronauts
DROP TABLE Astronauts;


#Creating Table Astronauts
#Creates an attribute and its corresponding type
#Sets the attribute "id" as the primary key
#id is an auto-incremented field
CREATE TABLE Astronauts(
id	INT NOT NULL AUTO_INCREMENT,
lastName VARCHAR(20),
firstName VARCHAR(20),
middleInitial CHAR(1),
suffix VARCHAR(12),
gender CHAR(1),
birth DATE,
city VARCHAR(20),
state VARCHAR(15),
country VARCHAR(15),
status VARCHAR(10),
daysInSpace INT,
yearStarted INT,
groupNumber	INT,
numberOfFlights INT,
spaceCenter VARCHAR(30),
militaryRank VARCHAR(15),
militaryBranch VARCHAR(20),
UNIQUE (id)
);

#loading file Astronauts.csv to add data to Table Astronauts
LOAD DATA LOCAL INFILE '/Users/ChrisSheehan/Documents/265 /prg01/Astronauts.csv' 
INTO TABLE Astronauts
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;