#DATE-30/8/25

create database hospital_management;
use hospital_management;

create table doctor (doctor_id int not null auto_increment, name varchar(50) not null, age int, 
specialization varchar(100) not null, primary key(doctor_id));

create table patient(patient_id int not null auto_increment , patient_name varchar(100) not null, 
patient_disease varchar(50), age int, primary key(patient_id));

create table hospital_enroll(enroll_no int not null auto_increment , doctor_id int, patient_id int, enroll_date date ,
primary key(enroll_no),
foreign key(doctor_id) references doctor(doctor_id),
foreign key(patient_id) references patient(patient_id));

drop database hospital_management;



# 
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
