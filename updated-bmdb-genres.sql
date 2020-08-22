DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

create table genre (
ID 			integer			primary key auto_increment,
Name		varchar(10)		not null
);

create table moviegenre (
ID			integer			primary key auto_increment,
movieID 	integer			not null,
genreID		integer			not null
);

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
    