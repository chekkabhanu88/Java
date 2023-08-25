use bhanu;

create table em4(
id int identity(1,1) primary key,
name varchar(20),
age int,
trainer_name varchar(20));--creating table em1

alter table em1 alter column name text;

alter table em1 add trainer_name varchar(10);

alter table em2  add salary int;

insert into em2 values('sai',21),('vardhan',21);--creating table em1

update em1 set name='sai' where id=1;--updating date using where clause ata time one column

update em1 set name='jaya vardhan',age=22 where id=2;--updating date using where clause at a time 2 columns

select * from em1;--fetching all rows of table

delete from em1 where id=2;--delete particular row using where clause

delete from em1;--deleteing entire table

insert into em1 values('vardhan3212',22)--inserting data to table

select  * from em1 where name like'vardha%'; --to fetch top 50 percent rows where name like operator 

select * from em1 where name like '%s';

select * from em1 where name like '%n';

select * from em1 where name like '%a%';

select * from em1 where name like 's%i';

select * from em1 where name like '_a%';

select * from em1 where name  not like 's%';

select top (50) percent   * from em1 order by id desc ; --to get top 50 percent rows of em1 which are ordered by id
select top (3) *  from em1;-- to get top 3 rows of em1

select * from em1;--to get all rows of em1

select  * from em1 order by id offset 2 rows fetch next 1 row only--used to fetch 3 row of  table without any information of table like id,name

select max(id)  from em1 where id<(select max(id) from em1 where id<(select max(id) from em1)); 

select count(*) from em1;--to get no of rows in a table

select sum(age) from em1;--for fetching sum of age of employee

select avg(age) from em1;--for getting avg age of employee

select * from em1 order by id desc offset 2 rows fetch next 1 row only;--for fetching 3 highest id record

select * from em1 where id=7 or id=8;--fetching rows where id=7,8 using or operator

select * from em1 where id in(7,8);--fetching rows where id=7,8 using in operator

select * from em1 where id between 1 and 10;--for frteching rows of table which are having id between 1 and 10

select * from em1 where id not between 1 and 10;--for frteching rows of table which are not having id between 1 and 10

 select * from em3 union   select * from em4;

 update em2 set salary=50000;

 alter table em2 add trainer_name varchar(10);


 select * from em2 union select * from em1;

 select * from em1;

 insert into em4(name,trainer_name) values('sai',21),('vardhan',21)



 create table person(person_id int identity(1,1) primary key,person_name varchar(20)not null,age int check(age>18)not null,person_address text not null,dateofcreation datetime not null);

 create table bank_details2(bid int  identity(1,1) primary key,person_id  int foreign key references person(person_id) not null,bankacc_no varchar(20) unique not null,bank_ifsc varchar(20) not null,bank_address text not null,dateofcreation datetime not null);

 create table attendence(attendence_id int identity(1,1) primary key,person_id int foreign key references person(person_id) not null,intime time,outtime time,dateofcreation datetime not null);

 create table salaries(sid int identity(1,1) primary key,person_id int foreign key references person(person_id) not null ,bank_id int foreign key references bank_details2(bid) not null,salary float not null,monthofissue varchar(15) not null, dateofcreation datetime not null);

 insert into person values('sai',22,'rentachintala',getdate()),('vardhan',22,'guntur',getdate()),('raju',23,'hyderabad',getdate());

 insert into bank_details2 values(1,'1234456','5678@axis','madhapur',getdate()),(2,'1234567','5678@axis','madhapur',getdate()),(3,'123456789','5678@axis','madhapur',getdate());

 insert into attendence values(1,'09:00:00','6:00:00',getdate()),(2,'09:00:00','6:00:00',getdate()),(3,'09:00:00','6:00:00',getdate());

 insert into salaries values(1,1,15000.00,'aug',getdate()),(2,2,15000.00,'aug',getdate()),(3,3,15000.00,'aug',getdate());



 create table employee20(id int identity(1,1),emp_code int unique,emp_name varchar(20),age int not null,primary key(emp_code,emp_name),dateofcreation datetime);

 create table salary10(sid int identity(1,1) primary key,emp_code int not null,emp_name varchar(20)  not null,salary float  not null,foreign key(emp_code,emp_name) references employee20(emp_code,emp_name),dateofcreation datetime);

 insert into employee20 values(101,'sai',22,getdate()),(102,'vardhan',22,getdate()),(103,'raju',23,getdate());

 insert into salary10 values(101,'sai',15000.00,getdate()),(102,'vardhan',15000.00,getdate());


 create table employeeee(employeeId int identity(1,1) primary key,firstname varchar(20),lastname varchar(20),age int check(age>18),salary float);
 alter table employeeContact add dateofcreation datetime;

 create table employeeContact(contactId int identity(1,1) primary key,employee_id int foreign key references employeeee(employeeid),email varchar(30),phone varchar(20));

 insert into employeeee values('john','smith',30,60000,getdate()),('emiley','johnson',28,55000,getdate()),('miachel','williams',32,62000,getdate());
 
 insert into employeeContact values(1,'john@example.com','555-123-4567',getdate()),(2,'emiley@example.com','555-987-6543',getdate()),(3,'miachel@example.com','555-555-1234',getdate());


 select * from employeeContact;
 select * from employeeee;

 --Update the salary of employee with EmployeeID 1 to 65000.

 update employeeee set salary=65000 where employeeId=1;

 --Update the age of employee with EmployeeID 2 to 29 and also increase their salary to 58000.

 update employeeee set salary=58000,age=29 where employeeId=2;

 --Retrieve the first 50% of employee data based on their names in ascending order.

 select top (50) percent * from employeeee order by  firstname asc;

 --Retrieve the names of employees whose names start with 'J'.

 select * from employeeee where firstname like 'j%';

 --Retrieve the names of employees whose names end with 'n'.

 select * from employeeee where firstname like '%n';

 --Retrieve the names of employees whose names contain the letter 'i' at any position.

 select * from employeeee where firstname like '%i%';

 --Retrieve the names of employees whose names start with 'M' and end with 'l'.

select * from employeeee where firstname like 'm%l';

--Retrieve the names of employees whose names have 'o' as the second character.

select * from employeeee where firstname like '_o%';

--Retrieve the names of employees whose names do not start with 'J'.

select * from employeeee where firstname not like 'j%';

--Delete the employee record with EmployeeID 3 from the Employees table.
delete from employeeContact where employee_id=3;
delete from employeeee where EmployeeID=3;

--Delete all records from the EmployeeContacts table.

delete from employeeee;

--truncate deletes all the records at a time and delete only deletes specified records by where clause and delete can also delete the whole table at a time;
