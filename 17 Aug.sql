backup database Bhanu to disk='C:\database\bhanu';--backup databse to a file in your system


Restore database bhanu from disk='C:\database\bhanu';-- restoring databse from your system file

use bhanu;-- fro performing any operation on databse
select * from student;--fetching all rows of student

insert into employee values(101,'vardhan','gnt');--inserting into employee

select * from employee;--fetching all rows of employee

alter table employee add dob date; -- adding dob column of type date  to table 



update  employee set dob='17-dec-2004' where id=101; -- set dob to date in a column

create table registration(username text,email text,password text,mobilenumber bigint ,dob date,dateofcreation date);-- creating registration table 

select * from registration;--fetching all rows of  registration

create table employee1(employeeId  int primary key,firstName text,lastName text,birthDate date,gender char,phoneNumber bigint,email text,address text,department text,position text,hireDate date);-- creating table employee1

alter table employee1 alter column employeeId int;--alter column name and data type of a table

drop table employee1;-- dropping the table employee1 or deleting the entire table

create table employee1(employeeId  int identity(1,1) primary key,firstName text,lastName text,birthDate date,gender char,phoneNumber bigint,email text,address text,department text,position text,hireDate date);--creating table employee1 with auto increment key as identity for id column

select * from employee1;--fetching all rows of employee1


insert into employee1 values(105,'manikanta','chand','08-09-2002','m',9849827005,'mani@gmail.com','macherala','IT','trainee','15-07-2023');--inserting dta to table employee1


alter table employee1 drop column phoneNumber;  --drop column of table employee1

alter table employee1 add phoneNumber  bigint check (phoneNumber >=1000000000 and phoneNumber<=9999999999);-- givin constraint to the phonenumber column


create table customers(customer_id int primary key,Customer_phone varchar(12),customer_email text);--creating table customers

create table orders(order_id int primary key , order_date date,customer_id int CONSTRAINT fk_customerorder FOREIGN KEY (customer_id)-- creating table orders
    REFERENCES customers(customer_id));

create table item(item_id int primary key,item_name text,item_price int);--creating table item


create table orders_items(order_id int constraint fk_orderorderitems foreign key(order_id) references orders(order_id),item_id int constraint fk_itemordersitem foreign key(item_id) references item(item_id)); -- creating table order_items


create table products(product_id int primary key,product_name text,product_price int);--creating table products

create table suppilers(supplier_id int primary key,supplier_name text,product_id int constraint fk_productssuppliers foreign key(product_id) references products(product_id));--creating table suppliers



create table stocklevels(product_id int foreign key references products(product_id),quantity_remaining float);--creating table stock levels

drop table stocklevels; --dropping table stock levels

delete from registration;--deleting data from table





select * from student;--Selecting all data from the table

insert into  student values(103,'roopesh','gnt');--inserting data into table 


delete from student;


create table signup(username varchar(20),password varchar(20));--creating table signup


Select * From signup;--selecting all rows from signup table

alter table signup add email varchar(20);--adding column to table signup

alter table signup add id int;--adding column to table signup


alter table signup add dateofcreation date;--adding column to table signup


insert into signup values('bhanu','1234@bhanu','bhanu@gmail.com','m','12-dec-2003');--inserting data into table

insert into signup values('vardhan','1234@vardhan','vardhan@gmail.com','m','24-jan-2001');--inserting data into table

insert into signup values('sai','1234@sai','sai@gmail.com','m','07-07-2001');--inserting data into table


update signup set dateofcreation=GETDATE();--get date will get you that present date of that particular day.
use bhanu;--if you want to perform any operations on databsae or tables then first you should use it.
select * from signup;--it fetches all the rows of that table.

insert into employee1 values('manikanta','chand','2002-10-20','m','mani@gmail.com','macherala','IT','trainee','2023-07-15',15000.00,1,9849827005);--inserting row into the employee1 table


select * from employee1;--fetcching all rows from employee1 table


select * from signup;  -- fetching all rows from signup table

insert into signup values('roopesh','1234@roopesh','roopesh@gmail.com','m','2002-03-30',104,GETDATE());  -- inserting into table called signup


delete from signup where id=104;









