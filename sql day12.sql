#DATE-06/09/25
use cybrom;
show tables;
select * from info1;	
update info1 set age = 32 where id = 1;
set sql_safe_updates = 0; #  for safe mode disable # u can update in disable mode
set sql_safe_updates = 1; # for safe mode enable  # u cant update in enable mode
describe info1;

alter table info1 modify column id varchar(200) not null;  # anything can be changed in outer structure (through alter)

alter table info1 modify column age varchar(200) not null; # use modify for change in the outer structure

alter table info1 rename column id to id_no; # for renaming the column name

#TABLE RENAME
rename table info1 to information; # can be done without using alter command
select* from information;

#COLUMN RENAME
alter table information rename column age to age_no;
select* from information;

# adding new column in table
alter table information add column contact varchar(30)not null;
describe information;
select* from information;select* from information;
insert into information (contact) values("+91 53437"),("+93 567898"),("+94 987654"); # cannot add values by insert ,
# for adding/updating values we need to perform seperate operation.....


# for adding/updating 
update information set contact = "987655433" where id_no = 1; 
select* from information;
update information set contact = "987654" where id_no = 2; 
update information set contact = "934567" where id_no = 3; 
update information set contact = "97234567" where id_no = 4; 
update information set contact = "8765432" where id_no = 8; 

alter table information drop column contact;

