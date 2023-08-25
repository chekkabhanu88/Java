 create table employee20(id int identity(1,1),emp_code int unique,emp_name varchar(20),age int not null,primary key(emp_code,emp_name),dateofcreation datetime);

 create table salary10(sid int identity(1,1) primary key,emp_code int not null,emp_name varchar(20)  not null,salary float  not null,foreign key(emp_code,emp_name) references employee20(emp_code,emp_name),dateofcreation datetime);

 insert into employee20 values(101,'sai',22,getdate()),(102,'vardhan',22,getdate()),(103,'raju',23,getdate());

 insert into salary10 values(101,'sai',15000.00,getdate()),(102,'vardhan',15000.00,getdate());
