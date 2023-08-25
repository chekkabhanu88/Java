create table person(person_id int identity(1,1) primary key,person_name varchar(20)not null,age int check(age>18)not null,person_address text not null,dateofcreation datetime not null);

 create table bank_details2(bid int  identity(1,1) primary key,person_id  int foreign key references person(person_id) not null,bankacc_no varchar(20) unique not null,bank_ifsc varchar(20) not null,bank_address text not null,dateofcreation datetime not null);

 create table attendence(attendence_id int identity(1,1) primary key,person_id int foreign key references person(person_id) not null,intime time,outtime time,dateofcreation datetime not null);

 create table salaries(sid int identity(1,1) primary key,person_id int foreign key references person(person_id) not null ,bank_id int foreign key references bank_details2(bid) not null,salary float not null,monthofissue varchar(15) not null, dateofcreation datetime not null);

 insert into person values('sai',22,'rentachintala',getdate()),('vardhan',22,'guntur',getdate()),('raju',23,'hyderabad',getdate());

 insert into bank_details2 values(1,'1234456','5678@axis','madhapur',getdate()),(2,'1234567','5678@axis','madhapur',getdate()),(3,'123456789','5678@axis','madhapur',getdate());

 insert into attendence values(1,'09:00:00','6:00:00',getdate()),(2,'09:00:00','6:00:00',getdate()),(3,'09:00:00','6:00:00',getdate());

 insert into salaries values(1,1,15000.00,'aug',getdate()),(2,2,15000.00,'aug',getdate()),(3,3,15000.00,'aug',getdate());

