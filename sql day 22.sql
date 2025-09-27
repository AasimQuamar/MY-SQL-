#DATE - 23/9/25
#VIEW
use dummy;
select * from customers;
select * from customers where country not in ("usa","australia") and creditLimit >= 50000;

# UPDATABLE VIEW
create view A_View as (select * from customers where country not in ("usa","australia") and creditLimit >= 50000);
create table cust as select * from customers;

select * from a_view;
select * from customers;
create view b_view as (select customername,city,state,country from customers);
select * from b_view; 