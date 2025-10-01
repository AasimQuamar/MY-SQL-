# DATE- 29/9/25
# GROUP BY

use dummy;
select * from customers;
select distinct city from customers;
select distinct count(city) from customers;
select count(*) from customers;
select sum(creditlimit) as total_creditlimit, city from customers group by city;



create table emp(emp_id int primary key, dept varchar(30) not null, salary int not null);
insert into emp(emp_id,dept,salary)
 values 
(1,"IT",10000),(2,"FINANCE",20000),(3,"SALES",25000),(4,"IT",50000),(5,"FINANCE",45000);
select * from emp;
select sum(salary) as total_salary, dept from emp group by dept;

select distinct dept from emp;
select dept from emp group by dept;

# HAVING
select sum(salary) as total_salary, dept from emp group by dept having total_salary > 25000;

select * from emp having salary > 20000;
select * from emp where salary > 20000;

select max(salary) as max_salary, dept from emp group by dept;

select sum(salary) as total_salary, dept from emp where salary > 20000 group by dept having total_salary > 25000;