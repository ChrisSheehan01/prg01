#Chris Sheehan
#February 12, 2016
#Programming Assignment 1


#Creates a Database called "prg01"
CREATE DATABASE prg01;

#Chooses the Database "prg01" as the Database to use
USE prg01;

#Removes any existing table called "Astronauts"
DROP TABLE Astronauts;


#The following Schema defines the Relation "Astronauts"
#	This schema also defines a set of attributes and their corresponding types
#		"UNIQUE (id)" sets the attribute "id" as the primary key
#		"id" is an auto-incremented field, and can never be null
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

#The following loads the file Astronauts.csv to add data to the Table "Astronauts"
#	Each line is a tuple, and each tuple is divided by commas to show where a column ends
#	It also ignores the top row which is a list of the attributes
LOAD DATA LOCAL INFILE '/Users/ChrisSheehan/Documents/265 /prg01/Astronauts.csv' 
INTO TABLE Astronauts
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

#QUERIES
#a) the total number of astronauts.

#b) the total number of American astronauts.

#c) the list of nationalities of all astronauts in alphabetical order.

#d) all astronaut names ordered by last name (use the format Last Name, First Name, Suffix to display the names).

#e) the total number of astronauts by gender.

#f) the total number of female astronauts that are still active.

#g) the total number of American female astronauts that are still active.

#h) the list of all American female astronauts that are still active ordered by last name (use the same name format used in d).

#i) the list of Chinese astronauts, displaying only their names and ages (use the same name format used in d).

#j) the total number of astronauts by country.

#k) the total number of American astronauts per state ordered by the totals in descendent order.

#l)the total number of astronauts by statuses (i.e., active, management, or former).

#m) name and age of all non-­‐American astronauts in alphabetical order (use the same name format used in d).

#n) the average age of all American astronauts that are still active.