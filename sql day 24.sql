#DATE - 26/9/25

use dummy;
select * from customers;
select * from orders;
select * from payments;
select c.customernumber, c.customername, c.creditlimit, o.status,
 p.amount from customers as c join orders as o 
on c.customernumber = o.customernumber join payments as p on o.customernumber = p.customernumber 
where p.amount > 2000 order by amount desc limit 100;