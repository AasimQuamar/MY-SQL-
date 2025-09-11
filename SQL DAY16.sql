#DATE- 11/9/25
use dummy;
select * from customers;
select * from orders;
select * from orderdetails;
select * from payments;
describe orders;
describe orderdetails;
describe payments;

# MULTIPLE TABLE JOINING
select c.customernumber,c.customername,c.country,o.ordernumber,
o.status,p.amount from customers as c inner join 
orders as o on c.customernumber = o.customernumber inner join payments as p on
 o.customernumber = p.customernumber order by amount desc; 
 
# on works on both same column name and different column name
# for ex:- on customer.customernumber = order.customernumber
# for ex:- on customer.customer_no = order.customernumber
#  using is same as on , we can use using instead of on but column name should be same of both the column....
 
select c.customernumber,c.customername,c.country,o.ordernumber,
o.status,p.amount from customers as c inner join 
orders as o using (customernumber) inner join payments as p using (customernumber) 
order by amount desc;
 
select * from customers inner join orders using(customernumber);

# new table creation 
create table table12(id int);
create table table22(id int);
insert into table12 (id) values (1),(2),(3),(4); 
insert into table22 (id) values (1),(1),(2),(3);
select * from table12 as a inner join table22 as b on a.id = b.id;
select * from table12 inner join table22 using(id);

