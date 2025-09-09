#DATE- 05/09/25
# SEQUENTIAL  # ORDER BY

select * from customers;
select customernumber,customername,contactlastname from customers order by customername;

select customernumber,customername,contactlastname from customers order by customername desc;

select * from customers;
select customernumber,customername,contactlastname,creditlimit from customers order by creditlimit asc;

select customernumber,customername,contactlastname,creditlimit from customers order by creditlimit desc;

#list  #offset
select * from customers order by creditlimit desc limit 3;  #limit- no of rows output 
# its gives a top value data

select * from customers order by creditlimit desc limit 2 offset 1;  #no of rows release  

# for fifth highest 
select * from customers order by creditlimit desc limit 1 offset 4;

select * from customers limit 3;
select * from customers order by creditlimit desc;
select * from customers order by creditlimit desc limit 5;
select * from customers order by creditlimit desc limit 4 offset 2;

update customers set phone = 1234 where customernumber = 103;
select * from customers;