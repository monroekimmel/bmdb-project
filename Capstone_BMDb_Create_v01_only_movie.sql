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
Gender 			Varchar(1) 	not null,
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

-- Add some movies
 insert into Movie VALUES
 	(1, 'Star Wars', 1977, 'PG', 'George Lucas'),
 	(2, 'Sixteen Candles', 1984, 'PG', 'John Hughes'),
  	(3, 'Fifth Element', 1997, 'PG-13', 'Luc Besson'),
 	(4, 'Better Off Dead', 1985, 'PG', 'Savage Steve Holland'),
    (5, 'Blazing Saddles', 1974, 'R', 'Mel Brooks'),
    (6, 'The Lodge', 2019, 'R', 'Veronika Franz'),
    (7, 'The Human Centipede', 2009, 'R', 'Tom Six'),
    (8, 'The Human Centipede II', 2011, 'NR', 'Tom Six'),
    (9, 'The Human Centipede III', 2015, 'NR', 'Tom Six'),
    (10, 'Hereditary', 2018, 'R', 'Ari Aster')
    ;
    
-- add some actors
-- date fields are yyyy-mm-dd
insert into actor VALUES 
	(1, 'Mark', 'Hamill', 'M', '1951-09-25'),
    (2, 'Harrison', 'Ford', 'M', '1942-07-13'),
    (3, 'Molly', 'Ringwald', 'F', '1968-02-18'),
    (4, 'Anthony Michael', 'Hall', 'M', '1968-04-14')
    ;

-- add some credits
-- business rule: combo of actor+movie must be unique
insert into Credit VALUES
    (1, 1, 1, 'Luke Skywalker'),
    (2, 2, 1, 'Han Solo'),
    (3, 3, 2, 'Samantha Baker'),
    (4, 4, 2, 'Geek')
    ;
    