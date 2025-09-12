use dummy;
select * from customers;
select * from orders;
select * from orderdetails;
select * from payments;

select c.customernumber, c.customername, c.country, o.ordernumber, o.status, 
od.quantityordered * od.priceeach, p.amount from customers as c inner join orders as o using (customernumber)
inner join orderdetails as od using (ordernumber) inner join payments as p using (customernumber);

select c.customernumber, c.customername, c.country,p.amount ,o.status, o.ordernumber,
od.quantityordered * od.priceeach from customers as c inner join payments as p using(customernumber)
inner join orders as o using(customernumber) inner join orderdetails as od using(ordernumber);

select * from customers as c left join orders as o on c.customernumber = o.customernumber;

select * from customers as c inner join orders as o on c.customernumber = o.customernumber;

select * from customers join orders using(customernumber); # only join also behave l


