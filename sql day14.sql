#DATE- 9/9/25

use dummy;
select * from customers;
select * from orders;
describe customers;
describe orders;

select * from customers inner join orders on customers.customernumber = orders.customernumber;

select customernumber,customername,city,country,ordernumber,status from customers inner join orders
 on customers.customernumber = orders.customernumber; 
 # it gives ambiguous error bcqs we didnt define from which table we select the customernumber 
 
 select customers.customernumber,customers.customername,customers.city,customers.country,orders.ordernumber,
orders.status from customers inner join orders
 on customers.customernumber = orders.customernumber;
 
 select customername,city,country,ordernumber,status from customers inner join orders
 on customers.customernumber = orders.customernumber;
 
 select customers.customernumber,customername,city,country,ordernumber,status from customers inner join 
 orders on customers.customernumber = orders.customernumber;
 
 select customers.customernumber,customername,city,country,orders.ordernumber,status from customers inner join 
 orders on customers.customernumber = orders.customernumber;
 
 #ALIAS - 
 select c.customernumber,c.customername,c.city,c.country,c.state,o.ordernumber, o.status from customers
 as c inner join  orders as o on c.customernumber = o.customernumber;
 
 
 