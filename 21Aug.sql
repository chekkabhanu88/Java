 use bhanu;

create table employee4(id int identity(1,1) primary key,name text not null,age int not null,phone_number bigint not null unique,dob date not null,dateofcreation datetime not null);--creating table employee4

create table bank_detail1(bid int identity(1,1) primary key,emp_id int foreign key references employee4(id),acc_no varchar(20) not null unique,bank_ifsc varchar(10) not null,bank_address text not null);--creating table bank detail

alter table bank_detail1 add dateofcreation date;--adding column to bank_detail table

create table salary3(emp_id int foreign key references employee4(id),bid int foreign key references bank_detail1(bid),salary float not null,dateofcreation date not null,month_name varchar(10) not null);--

alter table salary3 add serial_no int identity(1,1) primary key;--adding column to table after creation of table

create table daily_attendence1(serial_no int identity(1,1) primary key,emp_id int foreign key references employee4(id),dateofcreation datetime not null,working_hours float not null); 

insert into employee4 values('sai',22,9701488687,'2001-07-07',getdate()),('vardhan',22,9059182877,'2001-01-24',getdate()),('roopesh',21,9908058353,'2002-03-30',getdate());

insert into bank_detail1 values(1,'1234@axis','axis@234','madhapur',getdate()),(2,'23456@axis','axis@1234','madhapur',getdate()),(3,'6789@axis','axis@1234','madhapur',getdate());

insert into salary3 values(1,1,15000.00,GETDATE(),'aug'),(2,2,15000.00,GETDATE(),'aug'),(3,3,15000.00,GETDATE(),'aug');

insert into daily_attendence1 values(1,getdate(),5.00),(2,getdate(),8.00),(3,getdate(),6.75);

select * from employee4;--fetching all rows of employee4
select * from bank_detail1;--fetching all rows of bank_detil
select * from salary3;--fetching all rows of salary3
select * from daily_attendence1;--fetching all rows of daily_attendence

select * from daily_attendence1 where emp_id=1;--fetching all rows of daily _attendence where id=1


create table employee7(emp_id int unique ,emp_name varchar(20),primary key(emp_id,emp_name));--creating tbale with two primary keys

create table salary5(s_id int identity(1,1),emp_id int,emp_name varchar(20),foreign key(emp_id,emp_name) references employee7(emp_id,emp_name));--creating table with teo foreign keys

alter table salary5 add salary float;--adding column salary after creation of table


insert into employee7 values(101,'ms dhoni'),(102,'virat kohli'),(103,'rohit sharma'),(104,'bumrah');--inserting data into empoyee7

insert into salary5 values(101,'ms dhoni',5000000.00),(102,'virat kohli',5989790.00),(103,'rohit sharma',666767.00),(104,'bumrah',72364678.00);--inserting data into salary5

select * from employee7;--fetching all rows of employee7

select * from salary5;--fetchin all rows of salary5

create table  employee8(emp_id int,emp_name varchar(20),age int check(age>18 and age<60));--creating table employee8 using check constraint

insert into employee8 values(101,'sai',20);--inserting table employee8

create table salary6(emp_id int primary key,salary float);--creating table salary6

alter table salary6 add check (salary>50000);--adding constarint after creation of table

insert into salary6 values(101,500000.00); --inserting data to salary6

insert into salary6 values(102,323000.00);inserting data to salary6

create table employee9(id int not null,name varchar(20) default 'prolifics');--creating table employee9

insert into employee9 values(101,'bhanu');--inserting data into employee9

insert into employee9(id) values(102);--inserting data into employee9

select * from employee9;--fetching all rows of employee9

create table employee10(id int not null,name varchar(20),salary float if(salary>50000,set salary=);--creating table employee10 and using if condition but failed to do that
drop table employee10;--dropping table employee10


create table employee10(emp_id varchar(10), emp_company varchar(20) default 'prolifics',emp_name varchar(20),age int check(age>18 and age<60),primary key(emp_id,emp_name));--creating table with two primary keys and and using check and default constraint

create table salary7(s_id int identity(1,1) primary key,emp_id varchar(10),emp_name varchar(20),salary  float check(salary>50000) default 50001 ,foreign key(emp_id,emp_name) references employee10(emp_id,emp_name)); --creating table with multiple fpreign keys and using checka nd default value for attributes

insert into employee10 values('sai123','abc','sai',22);--inserting data into employee10

insert into employee10(emp_id,emp_name,age) values('vardhan123','vardhan',22);--inserting data into employee10

insert into salary7 values('sai123','sai',55000);--inserting data into salary7

insert into salary7(emp_id,emp_name) values('vardhan123','vardhan');--inserting data into salary7

select * from employee10;--fetching all rows of employee10

select * from salary7;--fetching all rows of salary7