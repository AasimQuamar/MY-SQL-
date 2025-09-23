#DATE- 18/9/25
use joins1;
-- Create the SAILORS table
CREATE TABLE SAILORS (
    sid INT PRIMARY KEY,
    sname VARCHAR(50),
    rating INT,
    age DECIMAL(5, 2)
);
-- Insert data into the SAILORS table
INSERT INTO SAILORS (sid, sname, rating, age) VALUES
(22, 'Dustin', 7, 45),
(29, 'Brutus', 1, 33),
(31, 'Lubber', 8, 55.5),
(32, 'Andy', 8, 25.5),
(58, 'Rusty', 10, 35),
(64, 'Horatio', 7, 35),
(71, 'Zorba', 10, 16),
(74, 'Horatio', 9, 35),
(85, 'Art', 3, 25.5),
(95, 'Bob', 3, 63.5);

-- Create the RESERVES table
CREATE TABLE RESERVES (
    sid INT,
    bid INT,
    day DATE,
    FOREIGN KEY (sid) REFERENCES SAILORS(sid),
    FOREIGN KEY (bid) REFERENCES BOATS(bid)
);

-- Insert data into the RESERVES table
INSERT INTO RESERVES (sid, bid, day) VALUES
(22, 101, '1998-10-10'),
(22, 102, '1998-10-10'),
(22, 103, '1998-10-08'),
(22, 104, '1998-10-07'),
(31, 102, '1998-11-10'),
(31, 103, '1998-11-06'),
(31, 104, '1998-11-12'),
(64, 101, '1998-09-05'),
(64, 102, '1998-09-08'),
(74, 103, '1998-09-08');

-- Create the BOATS table
CREATE TABLE BOATS (
    bid INT PRIMARY KEY,
    bname VARCHAR(50),
    color VARCHAR(20)
);

-- Insert data into the BOATS table
INSERT INTO BOATS (bid, bname, color) VALUES
(101, 'Interlake', 'blue'),
(102, 'Interlake', 'red'),
(103, 'Clipper', 'green'),
(104, 'Marine', 'red');

use joins1;
select * from sailors;
select * from boats;
select * from reserves;

--                                       QUESTIONS PRACTICE

-- Question -1 Find the names of sailors who have reserved boat 103?
select s.sname,b.bid,s.sid from boats as b inner join reserves as r on b.bid = r.bid inner join 
sailors as s on r.sid = s.sid where r.bid = 103;

-- Question-2 Find the colors of boats reserved by Lubber?
select s.sname,b.color from sailors as s inner join reserves as r on s.sid = r.sid inner join
 boats as b on r.bid = b.bid where s.sname = "lubber";
 
-- Question -3 Find the names of sailors who have reserved a red or a green boat?
select s.sname,b.color from sailors as s inner join reserves as r on s.sid = r.sid inner join
 boats as b on r.bid = b.bid where color in ("red","green");
 # where color = "red" or color = "green";
 # where b.color = "red" or b.color = "green";
 
-- Question 4: Find the names of sailors who have reserved both boat 101 and boat 102.








