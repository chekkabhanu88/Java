use bhanu;
backup database Bhanu to disk='C:\database\bhanu';--backup databse to a file in your system
Restore database bhanu from disk='C:\database\bhanu';-- restoring databse from your system file

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
create table employee13(id int identity(1,1) primary key,name text not null,age int not null,phone_number bigint not null unique,dob date not null,dateofcreation datetime not null);

create table bank_detail2(bid int identity(1,1) primary key,emp_id int foreign key references employee4(id),acc_no varchar(20) not null unique,bank_ifsc varchar(10) not null,bank_address text not null);

alter table bank_detail1 add dateofcreation date;

create table salary9(emp_id int foreign key references employee4(id),bid int foreign key references bank_detail1(bid),salary float not null,dateofcreation date not null,month_name varchar(10) not null);

alter table salary3 add serial_no int identity(1,1) primary key;


create table daily_attendence2(serial_no int identity(1,1) primary key,emp_id int foreign key references employee4(id),dateofcreation datetime not null,working_hours float not null); 

insert into employee4 values('sai',22,9701488687,'2001-07-07',getdate()),('vardhan',22,9059182877,'2001-01-24',getdate()),('roopesh',21,9908058353,'2002-03-30',getdate());

insert into bank_detail1 values(1,'1234@axis','axis@234','madhapur',getdate()),(2,'23456@axis','axis@1234','madhapur',getdate()),(3,'6789@axis','axis@1234','madhapur',getdate());

insert into salary3 values(1,1,15000.00,GETDATE(),'aug'),(2,2,15000.00,GETDATE(),'aug'),(3,3,15000.00,GETDATE(),'aug');

insert into daily_attendence1 values(1,getdate(),5.00),(2,getdate(),8.00),(3,getdate(),6.75);

select * from employee4;
select * from bank_detail1;
select * from salary3;
select * from daily_attendence1;

select * from daily_attendence1 where emp_id=1;

create table employee11(id int,name varchar(20));

alter table employee11 add primary key(id);--if we want to add primary key constarint then the attribute should be not null

drop table employee11;

create table employee12(emp_id varchar(10), emp_company varchar(20) default 'prolifics',emp_name varchar(20),age int check(age>18 and age<60),primary key(emp_id,emp_name));--creating table with two primary keys and and using check and default constraint

create table salary8(s_id int identity(1,1) primary key,emp_id varchar(10),emp_name varchar(20),salary  float check(salary>50000) default 50001 ,foreign key(emp_id,emp_name) references employee10(emp_id,emp_name)); --creating table with multiple fpreign keys and using checka nd default value for attributes

insert into employee10 values('sai123','abc','sai',22);--inserting data into employee10

insert into employee10(emp_id,emp_name,age) values('vardhan123','vardhan',22);--inserting data into employee10

insert into salary7 values('sai123','sai',55000);--inserting data into salary7

insert into salary7(emp_id,emp_name) values('vardhan123','vardhan');--inserting data into salary7

select * from employee10;--fetching all rows of employee10

select * from salary7;--fetching all rows of salary7

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table employee11(id int identity(1,1),name varchar(20));--creating table

insert into employee11 values('sai');--inserting data into table

alter table employee11  add primary key(id);--adding primary key to table attribute

select * from employee11;--fetching all rows of table

alter table employee11 add dateofcreation datetime;--using datetime

alter table  employee11 add dob smalldatetime;--

insert into employee11 values('shanmukha','2003-12-17 12:20:50',getdate());

select datename(week,getdate()) as week;--it gives presnet week no of year

SELECT CURRENT_TIMESTAMP;--using current_timestamp whicg gives us the present date and time

create table example(id int,name varchar(10),rowVersion timestamp);--creating table using tiemstamp

insert into example(id,name) values(2,'sa');--inserting data into table

select * from example;--fetching all rows of 

update example set name='sai kumar' where id=2; --updating table data

create table post(postid int,posttime datetimeoffset,postdescription varchar(100));--creating table using datatype datetimeoffset which is used to give time zone of type utc

insert into post values(1,'2023-08-22 12:00:00 +5:30','event in utc+5:30'); --inserting rows to table

select * from post;--fetching all rows of post

create table e(id int identity(1,1) primary key,
name varchar(20),
age int);--creating table e

insert into e values('sai',12);--inserting data into table
insert into e values('roopesh',15)--inserting data into table

select * from e where name='sai' or id=2 and  name='vardhan';--fetching data using where clause 

create table employ(id int identity(1,1) primary key,name varchar(20));

create table bankd(bid int identity(1,1) primary key,emp_id int foreign key references employ(id),bank_name varchar(20),bankacc_no varchar(20),bank_ifsc varchar(20),bank_address text);


create table attendence(id int identity(1,1) primary key,emp_id int foreign key references employ(id),intime time,outtime time,timeworked time);

create table salary(s_id int identity(1,1),emp_id int foreign key references employ(id),bid int foreign key references bankd(bid),att_id int foreign key references attendence(id),salary float); 

insert into attendence values(101,'09:00:00','6:00:00',datediff(hour,intime,outtime));

select max(salary) from salary ;

select * from employ;

select * from employ order by salary asc;

select * from employ order by salary desc;

select * from e;
insert into e(name,age) values('vardhan',20);

select * from e where name is null or not id=2;
select * from e where name is not null;




create table books(book_id int primary key,title varchar(20)not null,isbn varchar(20)not null,genre varchar(20)not null,price float not null,publisher_id int foreign key references publisher(publisher_id));

create table author(id int identity(1,1),author_id int not null,first_name varchar(20) not null,last_name varchar(20)not null,book_id int foreign key references books(book_id),primary key(author_id,book_id));

create table publisher(publisher_id int primary key,country varchar(20) not null);

create table inventory(book_id int foreign key references books(book_id) unique,stocklevelused int not null,stocklevelnew int not null);

create table customers1(customer_id int primary key,first_name varchar(20) not null,last_name varchar(20)not null,street_number varchar(20)not null,street_name varchar(20)not null,postal_code int not null,country varchar(20)not null,phone_number bigint not null);

create table bucket(bucket_id int identity(1,1) primary key,cid int foreign key references customers1(customer_id),book_id int references books(book_id),price float ,quantity int);

create table orders2(order_id int primary key,cid int foreign key references customers1(customer_id),bill float);

create table order_item2(id int identity(1,1) primary key,book_id int foreign key references books(book_id),quantity int,order_id int references orders2(order_id));

insert into publisher values(101,'india'),(102,'india');

insert into books values(101,'wings of fire','1234@wings','patriotisam',1500.00,101),(102,'discovery of india','1234@india','patriotisam',1000.00,102);

insert into author values(101,'abdul kalam','apj',101),(102,'jawaharlal','nehru',102);

insert into inventory values(101,150,200),(102,400,300);

insert into orderitem2 values(1,101,10,15000.00,101),(2,102,10,10000.00,102);

insert into orders2 values(1,101,getdate(),1500.00,1540.00),(2,102,getdate(),1450.00,1510.00);

insert into customers1 values(101,'sai','kumar','123-5','church road',5220,'india',9701488687),(102,'jaya','vardhan','1234-6','vidya nagar',2587,'india',9059182877);



select * from orders2;

select * from customers1;

select * from books;

select * from author;

select * from inventory;

select * from orderitem2;

select * from publisher;

 