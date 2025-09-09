#Date- 27/8/25
use cybrom;
create table info12(id int unique);
insert into info12(id) values (1),(null);
select * from info12;
create table info121(id int unique not null);
insert into info121(id) values (1),(null);
drop table info121;
create table info12(id int unique not null, age varchar(45) not null check (age>18), city varchar(30) not null default "Bhopal");
select * from info12;
describe info12;
insert into info12 (id, age , city) values (1,25,"Indore");
insert into info12 (id,age) values(2,25);
select * from info12;
drop table info13;


#PRIMARY KEY - (we can say combination of not null and unique)
create table info12(id int primary key, age int not null check (age>18),
 city varchar(30) not null default "Bhopal");
insert into info12(id,age,city) values (1,25,"Indore"),(2,19,"Bhopal");
describe info12;
select * from info12;


create table info12(id int primary key auto_increment, age int not null check (age>18),
 city varchar(30) not null default "Bhopal");
insert into info12(age) values(23),(24),(25),(26);
select * from info12;
describe info12;

create table info13(id int auto_increment, age int not null check (age>18), primary key(id,age));
describe info13;