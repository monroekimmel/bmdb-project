-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)
);

create table actor (
ID 				Integer 		primary key auto_increment,
Firstname 		varchar(255) 	not null,
Lastname 		Varchar(255) 	not null,
Gender 			Varchar(1) 		not null,
Birthdate		date			not null,
CONSTRAINT unq_actor unique (FirstName, LastName, Birthdate)
);

-- add credit table
create table credit (
ID		integer			primary key auto_increment,
actorID	integer			not null,
movieID	integer			not null,
role	varchar(255)	not null,
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)

);	

create table genre (
ID 			integer			primary key auto_increment,
Name		varchar(10)		not null
);

create table moviegenre (
ID			integer			primary key auto_increment,
movieID 	integer			not null,
genreID		integer			not null
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Star Wars', 1977, 'PG', 'George Lucas'),
 	(2, 'Sixteen Candles', 1984, 'PG', 'John Hughes'),
  	(3, 'Fifth Element', 1997, 'PG-13', 'Luc Besson'),
 	(4, 'Better Off Dead', 1985, 'PG', 'Savage Steve Holland'),
    (5, 'The Lodge', 2019, 'R', 'Veronika Franz'),
    (6, 'The Human Centipede', 2009, 'R', 'Tom Six'),
    (7, 'The Human Centipede II', 2011, 'NR', 'Tom Six'),
    (8, 'The Human Centipede III', 2015, 'NR', 'Tom Six'),
    (9, 'Hereditary', 2018, 'R', 'Ari Aster')
    ;
    
-- add some actors
-- date fields are yyyy-mm-dd
insert into actor VALUES
	(1, 'Mark', 'Hamill', 'M', '1951-09-25'),
    (2, 'Harrison', 'Ford', 'M', '1942-07-13'),
    (3, 'Molly', 'Ringwald', 'F', '1968-02-18'),
    (4, 'Anthony Michael', 'Hall', 'M', '1968-04-14'),
    (5, 'Bruce', 'Willis', 'M', '1955-03-19'),
    (6, 'Milla', 'Jovovich', 'F', '1975-12-17'),
    (7, 'John', 'Cusack', 'M', '1966-06-28'),
    (8, 'David Ogden', 'Stiers', 'M', '2018-03-03'),
    (9, 'Riley', 'Keough', 'F', '1989-05-29'),
    (10, 'Jaeden', 'Martell', 'M', '2003-01-04'),
    (11, 'Dieter', 'Laser', 'M', '1942-02-17'),
    (12, 'Ashley', 'Williams', 'F', '1984-01-24'),
    (13, 'Laurence', 'Harvey', 'M', '1970-07-17'),
    (14, 'Ashlynn', 'Yennie', 'F', '1985-05-15'),
    (15, 'Eric', 'Roberts', 'M', '1956-04-18'),
    (16, 'Toni', 'Collette', 'F', '1972-11-01'),
    (17, 'Milly', 'Shapiro', 'F', '2002-07-16')
    ;

-- add some credits
-- business rule: combo of actor+movie must be unique
insert into Credit VALUES
    (1, 1, 1, 'Luke Skywalker'),
    (2, 2, 1, 'Han Solo'),
    (3, 3, 2, 'Samantha Baker'),
    (4, 4, 2, 'Geek'),
    (5, 5, 3, 'Korben Dallas'),
    (6, 6, 3, 'Leeloo'),
    (7, 7, 4, 'Lane Meyer'),
    (8, 8, 4, 'Al Meyer'),
    (9, 9, 5, 'Grace'),
    (10, 10, 5, 'Aiden Hall'),
    (11, 11, 6, 'Dr. Heiter'),
    (12, 12, 6, 'Lindsay'),
    (13, 13, 7, 'Martin'),
    (14, 14, 7, 'Miss Yennie'),
    (15, 15, 8, 'Governor Hughes'),
    (16, 16, 9, 'Annie'),
    (17, 17, 9, 'Charlie')
    ;
    
    -- add some genres
insert into genre VALUES
	(1, 'horror'),
    (2, 'comedy'),
    (3, 'romance'),
    (4, 'western'),
    (5, 'drama'),
    (6, 'thriller'),
    (7, 'mystery')
    ;
    
        -- add movie genres
insert into moviegenre VALUES
	(1, 2, '2'),
    (2, 4, '2'),
    (3, 5, '4'),
    (4, 6, '5'),
    (5, 7, 1),
    (6, 8, 1),
    (7, 9, 1),
    (8, 10, '1')
    ;