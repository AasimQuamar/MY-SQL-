# Date-26/08/25
use cybrom;
show tables;
drop table info;
create table info(id int,name varchar(30),city char(30),dob date,
 salary decimal(6,3),mobile_number bigint,mobil_no varchar(30));
describe info;
insert into info(id,name,city,dob,salary,mobile_number,mobil_no)
 values (1,"Aasim","Bhopal","2001-06-06",99.999,9162018689,"+91 7369862480");
select * from info;

# Constraints
# unique,  not null , check, default
# keys - primary key , foreign key

create table info1(id int unique, age int not null);
insert into info1(id,age) values(3,28),(4,26),(8,24);
select * from info1; 

create table info2(id int unique not null, age int unique not null );
insert into info2(id,age) values(1,25),(2,26);
select * from info2; 
drop table info2;