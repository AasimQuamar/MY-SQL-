create database cybrom2;
use cybrom2;
create table info(id int primary key auto_increment,name varchar(30) not null,dob date not null,
age int not null check(age>18),city varchar(30) not null default "bhopal",project varchar(30) not null unique );
insert into info(name,dob,age,city,project)
values ("A","2025-09-05",34,"indore","abcd"),
("B","2025-09-05",34,"pune","efgh");
select * from info;

create table info2(id int auto_increment,name varchar(30) not null,dob date not null,
age int not null check(age>18),city varchar(30) not null default "bhopal",
project varchar(30) not null unique , primary key (id,name,project));

insert into info2(name,dob,age,city,project)
values ("A","2025-09-05",34,"indore","xcvbbn"),
("B","2025-09-05",34,"pune","asdfg");
select * from info2;
describe info2;


# data querify with clause
select name from info2;
select * from info2 where id = 2;
select * from info2 where age = 34;
select * from info2 where age >= 34;
select * from info2 where age < 34;
select * from info2 where age > 34;
select * from info2 where age <> 34;


# creating a data 

create table data(id int auto_increment,name varchar(30) not null,age int not null check(age>18),
dob date not null,department_name char(30) not null,date_and_time_of_joining datetime not null,year_of_joining year,
mobile_num bigint unique not null,salary decimal(6,2),city varchar(30) default "bhopal",
primary key(id,department_name,date_and_time_of_joining,dob));

insert into data(name,age,dob,department_name,date_and_time_of_joining,year_of_joining,mobile_num,salary)
values ("aasim",20,"2005-11-16","account","2020-06-12 12:13:56","2020",123456896,5000.00);

select * from data;
describe data;

insert into data(name,age,dob,department_name,date_and_time_of_joining,year_of_joining,mobile_num,salary)
values ("disha",20,"2055-11-16","IT","2070-06-12 14:13:56","2070",7412596,8900.00),
("bhumi",20,"2005-05-26","management","2020-06-22 14:13:56","2020",8963852,2500.00),
("aasim",22,"2006-05-13","hospital","2010-06-22 15:43:56","2010",75239652,7000.00);