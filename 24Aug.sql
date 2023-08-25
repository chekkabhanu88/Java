use bhanu;

select * from em1 order by id offset  2 rows fetch next 1 row only; 

update em1 set salary=25000 where id in (1,2);

update em1 set salary=24000,age=20 where id in(1,2,3,4);
 
 EXEC sp_help 'dbo.em1';

create table em5(
id int identity(1,1) primary key,
emp_name varchar(20),
age int,
salary int,
trainer_name varchar(20));

insert into em1 values('raju',23,15000,null),('kiran',22,15600,null),('pardha',23,14765,null);

select name from em1 union all select emp_name from em5;

select * from em1 order by salary offset 2 rows fetch next 1 row only;

select * from em1 where name like 'b%';

select * from em1 where name like '%a%'

select * from em1 where trainer_name like 'nitesh'; 

select top (50) percent * from em1; 

select * from em1 where name like '%s';

select * from em1 where name like '%n';

select * from em1 where name like '%a%';

select * from em1 where name like 's%i';

select * from em1 where name like '_a%';

select * from em1 where name  not like 's%';

select * from em1 order by id desc offset 2 rows fetch next 1 row only;

select * from em1 where id=7 or id=8;

select * from em1 where id in(7,8);

select * from em1 where id between 1 and 10;

select * from em1 where id not between 1 and 10;

select * from em3 union   select * from em4;

update em2 set salary=50000;

alter table em2 add trainer_name varchar(10);


select * from em2 union select * from em1;

select * from em1;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------JOINS IN A TABLE----------------------------------------------
create table customers2(customer_id int identity(1,1) primary key,name varchar(20),age int);

create table order4(order_id int identity(1,1) primary key,customer_id int foreign key references customers2(customer_id),order_item varchar(20),price money);

insert into customers2 values('kiran',23),('sai',22),('vardhan',23),('raju',23);

insert into order4 values(2,'pencil',35),(1,'pen',20),(2,'book',30),(3,'box',50);

select customers2.customer_id ,order4.order_id,order4.order_item,order4.price from customers2 inner join order4 on customers2.customer_id=order4.customer_id;

select * from customers2;

select * from order4;

create table emo(id int identity(1,1) primary key, name varchar(20));

create table training(id int identity(1,1),emp_id int foreign key references emo(id),trainings_done varchar(100)); 

insert into emo values('raina')('jadeja')('viratkohli'),('raju'),('sai'),('kiran'),('ms dhoni');

insert into training values(10,'softskills-java-database'),(6,'softskills-java-database'),(3,'softskills-java-database'),(4,'softskills-java-database');

select training.id,emo.name,training.trainings_done from emo right join training on emo.id=training.emp_id;

--alter table training drop constraint [FK__training__emp_id__57A801BA];


select * from products1;
select * from training;


create table products1(product_id int identity(1,1) primary key,product_name varchar(20),category varchar(20),price money,dateofcreation datetime);

create table orders5(order_id int identity(1,1) primary key,product_id int foreign key references products1(product_id),customer_name varchar(20),order_date date,dateofcreation datetime);

insert into products1 values('paper','stationery',100,getdate()),('mobile','electronics',15000,getdate()),('fan','electronics',15000,getdate()),('pencil','stationery',50,getdate());

insert into orders5 values(6,'mitesh','2022-09-20',getdate()),(7,'abhinav','2021-09-09',getdate()),(3,'vardhan','2021-06-06',getdate()),(4,'pardha','2023-02-02',getdate());

select products1.product_name,products1.category,products1.price,orders5.customer_name,orders5.order_date from products1 inner join orders5 on products1.product_id=orders5.product_id;

select products1.product_name,products1.category,products1.price,orders5.order_id,orders5.customer_name,orders5.order_date from products1 left join orders5 on products1.product_id=orders5.product_id;

alter table orders5 drop constraint [FK__orders5__product__5C6CB6D7];

select products1.product_name,products1.category,products1.price,orders5.product_id,orders5.order_id,orders5.customer_name,orders5.order_date from products1 right join orders5 on products1.product_id=orders5.product_id;


create table customer(customer_id int identity(1,1) primary key,name varchar(20),created_date date);

create table payment(payment_id int identity(1,1) primary key,customer_id int foreign key references customer(customer_id),staff_id int foreign key references staff(staff_id),amount money,dateofcreation date);

create table  staff(staff_id int identity(1,1) primary key,staff_name varchar(20),dateofcreation date);

insert into customer values('sai',getdate()),('vardhan',getdate()),('kiran',getdate()),('ramu',getdate());

insert into payment values(1,1,2000,getdate()),(2,1,4000,getdate()),(3,2,5000,getdate()),(4,2,3000,getdate());

insert into staff values('bhanu',getdate()),('roopesh',getdate())

select customer.customer_id,customer.name,payment.payment_id,payment.amount,payment.dateofcreation from customer inner join payment on customer.customer_id=payment.customer_id;

select staff.staff_id,staff.staff_name,staff.dateofcreation,payment.payment_id,payment.dateofcreation from staff inner join payment on staff.staff_id=payment.staff_id;

----------------------------------group by and having---------------------------------------------------------------------------------------------------------------------------------------------
create table tourist(id int identity(1,1) primary key,name varchar(200),country varchar(200));

insert into tourist values('raju','india'),('msdhoni','india'),('kiran','us'),('shanmukha','uk');

select country,count(*) as noofpersons from tourist group by country;

select country,count(*) as noofpersons from tourist group by country having count(*)>1;

create table supplier(supp_id int identity(1,1) primary key,name varchar(20));

create table products5(product_id int identity(1,1) primary key,product_name varchar(20),supp_id int,price money);

insert into supplier values('sai'),('vardhan');

insert into products5 values('wickets',2,600),('ball',2,200);

select supp_id from products5 where price>300 group by supp_id; 

select name from supplier where exists(select product_name from products5 join supplier on  products5.supp_id=supplier.supp_id and price>200);

select *  from supplier where  exists(select product_id,count(*) from products5  group by product_id);

select * from supplier
select * from products5

select *  into newtable from products5;

select * from newtable;


insert into  newtable(product_name,supp_id,price) select product_name,supp_id,price from products5 where product_id=5;


create table names(id int identity(1,1) primary key,name varchar(20));

insert into names values('sai'),('vardhan'),('konda'),('ramu'),('sita');


create table employ(id int identity(1,1) primary key,name varchar(20));

create table project(id int  identity(1,1) primary key,emp_id int foreign key references employ(id));

select * from employ;

select * from project;

insert into employ values('sai'),('vardhan'),('raju'),('kohli'),('ms dhoni'),('sachin');

insert into project values(1,1),(2,2),(1,3),(1,4);

delete from project;

alter table project add primary key(id,emp_id);

select * from employ where exists(select id,count(id) from project group by id);

create table em6(id int identity(1,1) primary key,name varchar(20));

create table department1 (d_id int,emp_id int,primary key(d_id,emp_id));

insert into em6 values('sai'),('varun'),('kiran'),('ramesh'),('pavan');

insert into department1 values(1,1),(1,2),(1,3),(2,4),(2,5);

select em6.id,em6.name,department1.d_id from em6 inner join department1 on em6.id=department1.emp_id;
-------------------------------case statement-------------------------------------------------------
select name,
case 
when name='sai' then 'he is my friend'
when name='vardhan' then 'he is my friend'
when name='konda' then 'he is my friend'
else 'dont know'
end as result
from names;

--------------assignment---------------------------------------------------
create table customer5(id int identity(1,1) primary key,name varchar(20));

create table order1(id int identity(1,1),product_name varchar(20),category varchar(20),price money,customer_id int  foreign key references customer5(id),dateoforder datetime);

insert into customer5 values('sai'),('kiran'),('ramesh'),('pavan');

insert into order1 values('stove','homeware',2000,1,getdate()),('pan','homeware',250,2,getdate()),('pen','stationry',50,3,getdate()),('pencil','stationery',40,4,getdate());

select customer5.name,order1.id,order1.product_name,order1.price,order1.category,order1.dateoforder from customer5 inner join order1 on customer5.id=order1.customer_id;

create table product(product_id int identity(1,1) primary key,product_name varchar(20),category varchar(20),price money,dateofcration datetime);

create table order2(id int identity(1,1),product_id int foreign key references product(product_id),dateoforder datetime);

insert into product values('stove','homeware',2000,getdate()),('pan','homeware',250,getdate()),('pen','stationry',50,getdate()),('pencil','stationery',40,getdate());

insert into order2 values(1,getdate()),(2,getdate()),(3,getdate());

select  product.product_name,product.price,product.category,order2.id,order2.dateoforder from product left join order2 on product.product_id=order2.product_id;