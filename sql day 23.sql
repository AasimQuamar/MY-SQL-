#DATE - 24/9/25
use dummy;

# NON updatable view

create algorithm = temptable view
old_view (customernumber,city,state,creditlimit) as 
(select customernumber,city,state,creditlimit from customers);
select * from old_view;

# updatable view

# in updatable view , there is only bidirectional 
create view a1_view as (select customernumber,city,state,creditlimit from customers);
select * from a1_view;

# cross filter direction
# single directional /  bidirectional

# bidirectional 
select * from a1_view;    # virtual table
select * from customers;  # main table
update customers set state = "AA" where customernumber = 103;
update a1_view set state = null where customernumber = 103;

#single directional
select * from customers;  # main table
select * from old_view;    # virtual table
update customers set state = "AA" where customernumber = 103;
update old_view set state = null where customernumber = 103;


# 
create view fetch_cust as (select c.customernumber, c.city, c.state , o.status 
from customers as c inner join orders as o  
on c.customernumber = o.customerNumber);
select * from fetch_cust; 


