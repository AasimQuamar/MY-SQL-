use cybrom2;
create table doctor (doc_id int,doc_name varchar(30),doc_dep varchar(30),city varchar(30) default "bhopal",primary key(doc_id));

create table patient(pat_id int , doc_id int , name varchar(30),room_no int ,mobile_no bigint,primary key(pat_id),
foreign key(doc_id) references doctor(doc_id));

create table hospital(hosp_id int,doc_id int , pat_id int, address varchar(100) not null,department varchar(100) not null,
primary key(hosp_id), foreign key(doc_id) references doctor(doc_id),foreign key(pat_id) references patient(pat_id));
describe doctor;
describe patient;
describe hospital;

use cybrom2;
show tables;
describe patient;
describe hospital;
# steps to drop foreign key
alter table patient drop foreign key patient_ibfk_1;    # 1st we drop foreign key relation
alter table patient drop key doc_id;                    # 2nd we drop key reference
alter table hospital drop foreign key hospital_ibfk_2;
alter table hospital drop key pat_id;
# copy struture
create table patient1 as select * from patient;
drop table patient;
rename table patient1 to patient;