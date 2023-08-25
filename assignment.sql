use bhanu;

create table employee2(id int identity(1,1) primary key,name text not null,age int not null,phone_number bigint not null unique,dob date not null,dateofcreation datetime not null);
create table bank_detail(bid int identity(1,1) primary key,emp_id int foreign key references employee2(id),acc_no varchar(20) not null unique,bank_ifsc varchar(10) not null,bank_address text not null);

alter table bank_detail add dateofcreation date;

create table salary2(emp_id int foreign key references employee2(id),bid int foreign key references bank_detail(bid),salary float not null,dateofcreation date not null,month_name varchar(10) not null);

insert into employee2 values('sai',22,9701488687,'2001-07-07',getdate());

insert into bank_detail values(1,'12345678','axis@1234','madhapur',getdate());

insert into salary2 values(1,1,15000.00,getdate(),'jan');