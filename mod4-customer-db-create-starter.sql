DROP DATABASE IF EXISTS mod4;
CREATE DATABASE mod4;
use mod4;

CREATE TABLE Customer (
	ID int not null primary key auto_increment,
	Name nvarchar(50) not null,
	City nvarchar(50) not null,
	State nvarchar(2) not null,
	Sales decimal(18,0) not null,
	Active bit not null
);

Insert Customer (Name, City, State, Sales, Active) Values ('Acme, inc.','Jersey City','NJ',14381891,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Widget Corp','Seattle','WA',97865829,1);
Insert Customer (Name, City, State, Sales, Active) Values ('123 Warehousing','Los Angeles','CA',77503710,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Demo Company','Columbus','OH',74647541,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Smith and Co.','Honolulu','HI',36046590,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Foo Bars','Fresno','CA',39912857,1);
Insert Customer (Name, City, State, Sales, Active) Values ('ABC Telecom','Birmingham','AL',31149083,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Fake Brothers','Stockton','CA',31226191,1);
Insert Customer (Name, City, State, Sales, Active) Values ('QWERTY Logistics','Lubbock','TX',17226905,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Demo, Inc.','Las Vegas','NV',69551557,1);

select name,sales from Customer
order by name;


Select name,sales from Customer
order by sales desc;

Select name,sales from customer
where sales>40000000;

select name,sales from customer
where sales >=30000000 and sales <40000000;

create table state (
code nvarchar(2) not null primary key,
name nvarchar(50) not null
);

insert state valu es ('AL', 'Alabama');
insert state values ('CA', 'California');
insert state values ('HI', 'Hawaii');
insert state values ('NV', 'Nevada');
insert state values ('NJ', 'New Jersey');
insert state values ('OH', 'Ohio');
insert state values ('TX', 'Texas');
insert state values ('WA', 'Washington')