use dummy;
show tables;

select* from customers;
describe customers;
select * from orders;
describe orders;
select* from customers where city = "nantes";
select customernumber,city,state from customers;
select customernumber,city,state from customers where city="nantes";


