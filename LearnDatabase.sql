create database LearnDB
go 
use LearnDB
create table Person (
id  int , 
Name varchar(40),
Gender char(1),
Birthd_date date , 
Address varchar(100),
Favorits_foods varchar(200),
constraint pk_Person primary key (id),
constraint check_Gender check (Gender in ('M' , 'F')),

)
use LearnDB 
drop table Person

use LearnDB

create table Person (
id int , 
fname varchar(20),
lname varchar(20),
gender char(1),
birth_date date,
address varchar(30),
city varchar(20),
state varchar(20),
country varchar(20),
postal_code int,

constraint pk_Person primary key (id),
constraint check_gender check (gender in ('M','F')),
constraint check_postal_code check ( postal_code between 100000 and 999999 )




)
