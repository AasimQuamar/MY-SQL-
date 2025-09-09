#Date- 25/08/25 
#CREATION
create database cybrom;
use cybrom;     #to move into the databases
show tables;    # to show the tables within the databases
create table info(id int,name varchar(30),age int,city char(30));
select * from info;    # to queryify the result set 
describe info;    # description outer structure

#INSERTION
insert into info (id,name,age,city) values (1,"Aasim",24,"Bhopal"),(2,"Disha",20,"Bhopal"),(3,"Bhumi",20,"Bhopal");
select * from info;
insert into info (id,name,age,city) values (1,"Aasim",24,"Bhopal"),(2,"Disha",20,"Bhopal"),(3,"Bhumi",20,"Bhopal"),
(4,"Aryan",25,null);