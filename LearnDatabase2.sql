create database Bank
use Bank
create table Account(
cd char(3),
title varchar(100),

constraint pk_Account primary key (cd),
)
create table Status(
id int primary key,
name varchar(40)
)
create table Customers(
id int primary key,
fname varchar(20),
lname varchar(20),
gender char(1) check (gender in ('F' , 'M')),
status_id int ,
address varchar(20),
city varchar(20),
country varchar(20),
street varchar(40),
constraint fk_status_id  foreign key (status_id)
references Status (id)
)
create table [Function](
id int primary key,
title varchar(30),
description varchar(max)
)
create table Department(
id int primary key ,
article decimal(8,0),
title varchar(30)
)
create table Employee(
id int primary key ,
full_name varchar(40),
)
create table Account_Customer(
customer_id int,
account_cd char(3),
balance money ,
constraint fk_Account_Customer_Customers foreign key (customer_id) references Customers (id),
constraint fk_Account_Customer_Account foreign key (account_cd) references Account (cd)
)
create table Transaction_Type(
cd char(3),
title varchar(40),
constraint pk_Transaction_Type primary key (cd)
)
create table [Transaction](
id int primary key,
transaction_type_id char(3),
account_cd char(3) ,
customer_sender_id int ,
customer_recipient_id int,
amount money,
transaction_date date,
successful_transaction bit,
constraint fk_Transaction_Transaction_Type foreign key (transaction_type_id) references Transaction_Type (cd),
constraint fk_Transaction_Customers foreign key (customer_sender_id) references Customers (id),
constraint fk_Transaction_Customer foreign key (customer_recipient_id ) references Customers (id),
constraint fk_Transaction_Account foreign key (account_cd) references Account(cd)
)
create table Department_Function(
Department_id int,
Function_id int,
constraint fk_Department_Function_Department foreign key (Department_id) references Department (id),
constraint fk_Department_Function_Function foreign key (Function_id) references [Function] (id)
)
create table Employee_Department(
employee_id int ,
dep_id int,
constraint fk_Employee_Department_Employee foreign key (employee_id) references Employee (id),
constraint fk_Employee_Department_Department foreign key (dep_id) references Department (id)
)

create table Employee_Customer(
employee_id int ,
customer_id int ,
constraint pk_Employee_Customer primary key (employee_id ,customer_id),
constraint fk_Employee_Customer_Emloyee foreign key (employee_id) references Employee (id),
constraint fk_Employee_Customer_Customers foreign key (customer_id) references Customers (id),
)
