#DATE- 1/9/25
create database hospital;
use hospital;
create table doctors(doct_id int primary key, doct_name varchar(30) not null, doct_age int not null,
specialization varchar(30) not null);

create table patients(patient_id int primary key , doct_id int, patient_name varchar(30) not null,
patient_disease varchar(30) not null,
foreign key (doct_id) references doctors(doct_id));

select * from doctors;
insert into doctors(doct_id,doct_name,doct_age,specialization) values(1,"A",25,"AA"),(2,"B",25,"BB");
insert into patients(patient_id,doct_id,patient_name,patient_disease) values (101,2,"CC","ccc"),(102,2,"DD","DDD");

select * from doctors inner join patients on 
doctors.doct_id = patients.doct_id;

describe patients;
# alter table patients drop foreign key  patients_ibfk_1;
# alter table patients drop key doct_id;
# drop table patients;
# drop table doctors;
# drop database hospital;


# COPY STRUCTURE
select * from doctors;
create table doctors1 as select * from doctors;
select * from doctors1;

drop table doctors;
rename table doctors1 to doctors;
