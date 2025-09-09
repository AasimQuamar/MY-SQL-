#DATE-8/9/25

#JOINS
use dummy;
select * from customers;
select * from orders;
select distinct status from orders;

# INNER JOIN
create database joins23;
use joins23;
create table table1(id int);
create table table2(id int);
insert into table1(id) values (1),(2),(2),(3),(4),(5),(null),(null);
insert into table2(id) values (1),(1),(2),(2),(2),(3),(null);

select * from table1;
select * from table2;

select * from table1 inner join table2 on table1.id = table2.id; 
select * from table1 left join table2 on table1.id = table2.id;
select * from table1 right join table2 on table1.id = table2.id;
select * from table1 cross join table2;

# two null never be same , & it can't connect to each other

# INNER JOIN - gives the output of common content between both the table 
# LEFT JOIN - inner + remaining value of right 
# RIGHT JOIN - inner + remaining value of left
# CROSS JOIN - it gives the cartisian product 
# NATURAL JOIN - in natural join if column name is similar , thn its behave like inner join  & 
#                  if column name is not similar , thn its behave like cross join


