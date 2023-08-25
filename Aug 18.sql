use bhanu;

create table registrations(username varchar(20),password varchar(20)); -- creating table registrations

alter table registrations add name text; --adding column to registrations table

select * from registrations;--for fetching all rows of registrations table

alter table registrations add id int identity(1,1) primary key;--adding column to registrations table by identity of auto increment

insert into registrations values('sai@1237','sai@123456','jaya sai');--inserting data into table registrations

alter table registrations add dob date,dateofcreation date;--adding more than one column at a time

alter table registrations alter column username varchar(25);--altering datatype of a column

alter table registrations drop column dob;--dropping a column from a table


update registrations set dateofcreation=GETDATE();--setting dateofcreation to that paricilar date by getdate() method
drop table registrations1;--dropping table registrations

create table registrations(username varchar(20),password varchar(20),aadhar_number bigint unique);--creating table registrations

alter table registrations add id  int identity(1,1)  primary key;--adding column to registrations table

insert into registrations values('sai@11234','sairtcl',123456789045),('vardhan@1234','vardhangnt',234567568943);--inserting more than one row to a table

select * from registrations;--fetching all rows of registrations table



alter table registrations add unique(employeeid);--adding constarint to the employeeid column



alter table registrations drop constraint [UQ__registra__9CF4698595DDA72D] ;--drop constarint with constarint id from table->keys->unique key id

insert into registrations values('sai@11234','sairtcl',123456789045,103);

create table registrations1(id int not null,phonenumber bigint not null unique);--there can no be two primary key for a table so if we want we can add not null and unique cosntarints sepertely.

insert into registrations1 values(null);

select * from registrations1;

alter table registrations1 add primary key(id);--if we wnat to add primary key constraint first the column should be not null

alter table registrations1 drop constraint [PK__registra__3213E83F9EAA18EA];

create table emp(id int identity(1,1) primary key,name text not null,age int not null,phone_number bigint not null unique,dob date not null,dateofcreation datetime not null,bankacc varchar(20) not null unique ,bank_ifsc varchar(10) not null,bank_address text not null);

select * from emp;
drop table emp;


create table salary(id int foreign key references emp(id) not null,salary_amount float not null,dateoftime datetime not null);

alter table salary add month_no int ;






insert into emp values('sai',20,9701488687,'2001-07-07',getdate(),'123456643422','axis123','madhapur');
insert into emp values('vardhan',22,9059182877,'2001-01-24',getdate(),'123456656342','axis123','madhapur');

insert into salary values(1,15000.00,getdate());
insert into salary values(2,15000.00,getdate());

select * from salary;
select * from bankdetails;


update emp set dateofcreation='2023-07-15' where id=2;



create table bankdetails(bid int identity(1,1) primary key,id int foreign key references emp(id),acc_no varchar(20),bank_ifsc varchar(10),bank_address text);

--alter table bankdetails add dateofcreation datetime;

create table emp(id int identity(1,1) primary key,name text not null,age int not null,phone_number bigint not null unique,dob date not null,dateofcreation datetime not null);

alter table emp add bid int foreign key references bankdetails(bid);
drop column 


insert into emp(name,age,phone_number,dob,dateofcreation) values('sai',22,9701488687,'2001-07-07',getdate());

insert into bankdetails values(3,'1235678','','madhapur');



update emp set bid=2 where id=2;

select * from emplo;
select * from bank;


insert into emp(name,age,phone_number,dob,dateofcreation) values('vardhan',22,9059182877,'2001-01-24',getdate());


create table emplo(id int identity(1,1) primary key,name text not null,age int not null,phone_number bigint not null unique,dob date not null,dateofcreation datetime not null);

alter table emplo drop column bid; 

create table bank(bid int identity(1,1) primary key,emp_id int foreign key references emp(id),acc_no varchar(20) not null unique,bank_ifsc varchar(10) not null,bank_address text not null);


create table employe(id int identity(1,1) primary key,name text not null,age int not null,phone_number bigint not null unique,dob date not null,dateofcreation datetime not null);

create table account_details(bid int identity(1,1) primary key,emp_id int foreign key references emp(id),acc_no varchar(20) not null unique,bank_ifsc varchar(10) not null,bank_address text not null);

alter table account_details add dateofcreation date;


create table salary1(emp_id int foreign key references employe(id),bid int foreign key references account_details(bid),salary float not null,dateofcreation date not null,month_name varchar(10) not null);


select * from employee2;
select * from account_details;
select * from salary2;


insert into employe values('sai',22,9701488687,'2201-07-07',getdate());

insert into account_details values(1,'12345678','axis@1234','madhapur',getdate());



create table employee2(id int identity(1,1) primary key,name text not null,age int not null,phone_number bigint not null unique,dob date not null,dateofcreation datetime not null);




create table bank_detail(bid int identity(1,1) primary key,emp_id int foreign key references employee2(id),acc_no varchar(20) not null unique,bank_ifsc varchar(10) not null,bank_address text not null);

alter table bank_detail add dateofcreation date;

create table salary2(emp_id int foreign key references employee2(id),bid int foreign key references bank_detail(bid),salary float not null,dateofcreation date not null,month_name varchar(10) not null);

insert into employee2 values('sai',22,9701488687,'2001-07-07',getdate());

insert into bank_detail values(1,'12345678','axis@1234','madhapur',getdate());

insert into salary2 values(1,1,15000.00,getdate(),'jan');