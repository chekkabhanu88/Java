use bhanu;
-----------------------joining multiple tables----------------------------------------
create table customer2(c_id int identity(1,1) primary key,c_name varchar(20));

create table products6(p_id int identity(1,1) primary key,p_name varchar(20));

create table order3(o_id int identity(1,1) primary key,p_id int foreign key references products6(p_id),c_id int foreign key references customer2(c_id));

insert into customer2 values('ms dhoni'),('virat'),('dinesh'),('karthik'),('jadeja');

insert into products6 values('bat'),('ball'),('wickets'),('pads'),('helmet');

insert into order3 values(1,1),(1,2),(1,3),(2,5),(3,5),(5,3),(5,4); 

select customer2.c_name,products6.p_name,order3.o_id from customer2 inner join order3 on customer2.c_id=order3.c_id inner join products6 on products6.p_id=order3.p_id;


----------------------craeting and using views------------------------------------------------
create view test as select customer2.c_name,products6.p_name,order3.o_id from customer2 inner join order3 on customer2.c_id=order3.c_id inner join products6 on products6.p_id=order3.p_id;

select c_name,p_name from test;

select * from test;

-----------------craeting and using stored  procedure------------------

create table pro(p_id int identity(1,1) primary key,p_name varchar(20));

select * from pro;

--craeting stored procedure and isnerting
create procedure spname as 
insert into pro values('nitesh'),('rahul');

--reading the data from procedure
create procedure spname2 as
select * from pro;

--call write procedure
exec spname

--call read procedure
exec spname2


-------------craeting and using functions-----------------------------

select CHARINDEX('ms','ms dhoni') as resultstring;
select CHARINDEX('v','virat') as resultstring;
select CHARINDEX('ar','sachin tendulkar') as resultstring;

select concat ('ms','dhoni') as result;

select lower('MS DHONI') as lowerof;

select replace('ms dhoni indian captain','indian','former indian') as result;

select trim ('? //' from 'sql tutorial ???//////') as result; 

select trim ( 'sql tutorial') as result; 

select datediff(DAY,getdate(),'2023-08-26 18:00:00');

Select datepart(day, getdate()) as currentdate

-------------craeting and using variables------------------------
--create a variable
declare @var1 varchar(25);--@ symbol should be there compulsory to declare 

--set the value
set @var1='virat';


select CHARINDEX('i',@var1) as resultstring;
select CHARINDEX('v',@var1) as resultstring;
select CHARINDEX('t',@var1) as resultstring;



Create Table Employees27(
Id int primary key identity,
Name nvarchar(50),
Email nvarchar(50),
Department nvarchar(50)
)


Create Table Employees26(
Id int identity,
Name nvarchar(50),
Email nvarchar(50),
Department nvarchar(50)
)


Go
SET NOCOUNT ON
Declare @counter int = 1
While(@counter <= 1000000)
Begin
Declare @Name nvarchar(50) = 'ABC ' + RTRIM(@counter)
Declare @Email nvarchar(50) = 'abc' + RTRIM(@counter) + '@pragimtech.com'
Declare @Dept nvarchar(10) = 'Dept ' + RTRIM(@counter)
Insert into Employees26 values (@Name, @Email, @Dept)
Set @counter = @counter +1
If(@Counter%100000 = 0)
Print RTRIM(@Counter) + ' rows inserted'
End

select * from employees27 where email='abc150@pragimtech.com';

----------------type casting
select cast(122.5 as int)as after;

declare @var2 float;
set @var2=122.5;

select cast(@var2 as int);
--------------if condition
create table marks(id int identity(1,1) primary key,marks int)

insert into marks values(90),(80),(40);

select * from marks;

select id,iif(marks>80,'pass','fail') from marks;
-----------is numeric condition
select isnumeric(4567) as numeric_or_not;

select isnumeric('fugfw') as numeric_or_not;

declare @va int;
declare @v1a int;
set @va =20;
set @v1a = 29;

select sum(@va+@v1a-1);

------creating function and using it via table----------------

create table marks1(id int identity(1,1) primary key,chem_marks int,phy_marks int); 

alter table  marks1 add name varchar(20);

insert into marks1 values(80,90,'sai'),(90,100,'vardhan');



create function getadd(@firstnumber int,@secondnumber int)
returns varchar(50)
as 
begin
return @firstnumber+@secondnumber
end

select name,dbo.getadd(chem_marks,phy_marks) as result from marks1;

select name,dbo.getmul1(chem_marks,phy_marks) as result from marks1;

alter function getmul(@firstnumber int,@secondnumber int)
returns varchar(50)
as 
begin
return @firstnumber*@secondnumber
end

drop function getmul1;
-----------------------assignment-------------------------------------

create table students(stud_id int identity(1,1) primary key,stud_name varchar(20));

create table courses(course_id int identity(1,1) primary key,course_name varchar(20));

create table enroll(enroll_id int identity(1,1) primary key,stud_id int foreign key references students(stud_id),course_id int foreign key references courses(course_id));

alter table enroll add grades char(1);
delete from enroll;



insert into students values('sai'),('vardhan'),('charan');

insert into courses values('science'),('social'),('maths');

insert into enroll values(1,1,'a'),(2,2,'b'),(3,3,'c'),(2,1,'a'),(2,2,'b'),(2,3,'c'),(3,1,'a'),(3,2,'b'),(3,3,'c');

-- Create a function to calculate GPA

CREATE FUNCTION calculate_gpa(@student_id INT) RETURNS DECIMAL(4, 2)
BEGIN
 DECLARE @total_points DECIMAL(10, 2);
 DECLARE @total_credits INT;
 declare @gpa decimal(4,2);
SELECT @total_points=coalesce(SUM(
            CASE grades
            WHEN 'A' THEN 4.0
            WHEN 'B' THEN 3.0
            WHEN 'C' THEN 2.0
            WHEN 'D' THEN 1.0
            WHEN 'F' THEN 0.0
            ELSE 0.0
          END),0)FROM enroll WHERE stud_id = @student_id;

 SELECT @total_credits=COUNT(*) 
 FROM enroll WHERE stud_id = @student_id;
 IF @total_credits > 0 
		set @gpa=@total_points/@total_credits; 
 ELSE
		set @gpa=0.0;
    return @gpa;
  END;

  select   students.stud_id,students.stud_name,dbo.calculate_gpa(stud_id)as result from students;



  create function gpa(@student_id int)
  returns decimal(4,2)
  begin
  declare @totalpoints decimal(4,2)
  declare @totalcredits int ;
  declare @gpa decimal(4,2);
  select @totalpoints=sum(
    case grades
	when 'a' then 4.0
	when 'b' then 3.0
	when 'c' then 2.0
	when 'd' then 1.0
	end) from enroll where stud_id=@student_id;

	select @totalcredits=count(*)
	from enroll where stud_id=@student_id;

	if @totalpoints>0
	   set @gpa=@totalpoints/@totalcredits;
	else
		set @gpa=0.0;
	return @gpa;

	end;

	select students.stud_id,students.stud_name,dbo.gpa(stud_id) as result from students;


					
