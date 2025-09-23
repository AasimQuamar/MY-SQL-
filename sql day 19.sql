# DATE- 16/9/25
# QUESTION PRACTICE 

create database joins1;
use joins1;
CREATE TABLE CUSTOMER1 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO CUSTOMER1 (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'),
(5, 'Emma', 'Miami');

CREATE TABLE ORDER1 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER1(customer_id)
);

INSERT INTO ORDER1 (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-01-10', 250.00),
(102, 2, '2024-01-12', 300.00),
(103, 2, '2024-01-15', 150.00),
(104, 4, '2024-01-20', 500.00),
(105, 5, '2024-01-25', 100.00);

# Q1: get the list of customers who have placed at least one order, including their names and order details

select c.customer_name, o.order_id,o.order_date,o.amount from
 customer1 as c inner join order1 as o on c.customer_id = o.customer_id;
 
# Q2: get a list of all customers, including those who have never placed an order.

select c.customer_name,o.order_id,o.order_date,o.amount from
 customer1 as c left join order1 as o on c.customer_id = o.customer_id;

# Q3: Find customers who have never placed an order.

select c.customer_name,o.order_id,o.order_date,o.amount from
 customer1 as c left join order1 as o on c.customer_id = o.customer_id where order_id is null;
 
# Q4: Find orders placed by customers from 'Los Angeles'. 

select c.customer_name,o.order_id,o.order_date,o.amount from
 customer1 as c left join order1 as o on c.customer_id = o.customer_id where city = "Los Angeles";
 
# Q5: Get the first 5 orders placed by customers from 'Chicago' or 'Los Angeles', sorted by order date.

select * from customer1 as c inner join order1 as o on c.customer_id = o.customer_id where 
city = "chicago" or city = "los angeles" order by order_date asc limit 5;
 
# Q6: Find orders placed by customers who are NOT from 'New York' or 'Miami', sorted by order date in ascending order.

select c.customer_name,c.city,o.order_id,o.order_date,o.amount from
 customer1 as c left join order1 as o on c.customer_id = o.customer_id 
 where city not in( "new york" ,"miami") order by order_date asc;
 
# Q7: Get all customers who have placed an order amount between $200 and $500, sorted by order amount in descending order.

select c.customer_name,o.order_id,o.order_date,o.amount from
 customer1 as c inner join order1 as o on c.customer_id = o.customer_id where amount between 200 and 500 order by
 amount desc;
 
# Q8: Find all customers who have never placed an order, sorted by customer name.

select c.customer_name,o.order_id,o.order_date,o.amount from
 customer1 as c left join order1 as o on c.customer_id = o.customer_id where order_id is null order by customer_name;
 