#DATE- 10/9/25
use dummy;
select * from customers;
select * from orders;

select customernumber,country,creditlimit,status, ordernumber
 from customers inner join orders on 
customers.customernumber = orders.customernumber; # it can give ambiguous error

#Aliasing 
select c.customernumber,c.country,c.creditlimit,o.status, o.ordernumber from 
customers as c inner join orders as o on 
c.customernumber = o.customernumber;

# using or , and 
select c.customernumber,c.country,c.creditlimit,o.status, o.ordernumber from 
customers as c inner join orders as o on 
c.customernumber = o.customernumber where country = "usa" or country = "germany";


# fetch the customer who order atleast 1 order and he is from usa and his order is shipped
select c.customernumber,c.country,c.creditlimit,o.status, o.ordernumber from 
customers as c inner join orders as o on 
c.customernumber = o.customernumber where country = "usa" and status = "shipped";

# for fetching country using in 
select c.customernumber,c.country,c.creditlimit,o.status, o.ordernumber from 
customers as c inner join orders as o on 
c.customernumber = o.customernumber where country in("usa","germany","norway");

select c.customernumber,c.country,c.creditlimit,o.status, o.ordernumber from 
customers as c inner join orders as o on 
c.customernumber = o.customernumber where country not in("usa","germany","norway");

#for fetching those customers from usa , in which those creditlimit is greater than 50000 
select * from customers where country = "usa" and creditlimit >= 50000 order by creditlimit desc limit 3 offset 1;


select c.customernumber,c.country,c.creditlimit,o.status, o.ordernumber from 
customers as c inner join orders as o on 
c.customernumber = o.customernumber where country not in("usa","germany","norway")
 and status = "shipped" order by creditlimit desc limit 1 offset 1;
 

 select * from customers order by creditlimit desc limit 1 offset 2;

select c.customernumber,c.country,c.creditlimit,o.status, o.ordernumber from 
customers as c inner join orders as o on 
c.customernumber = o.customernumber where creditlimit between 50000 and 100000 order by creditlimit desc;
	