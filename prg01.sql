#DROP TABLE Astronauts
CREATE TABLE Astronauts(
id INT UNIQUE,
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
groupNumber INT,
numberOfFlights INT,
spaceCenter VARCHAR(30),
militaryRank VARCHAR(15),
militaryBranch VARCHAR(20)
);