Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> create database prolifics;
Query OK, 1 row affected (0.05 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| prolifics          |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use prolifics;
Database changed
mysql> show tables;
Empty set (0.08 sec)

mysql> create table employee(emp_id int,emp_name text,salary double,doj date);
Query OK, 0 rows affected (0.21 sec)

mysql> describe employee;
+----------+--------+------+-----+---------+-------+
| Field    | Type   | Null | Key | Default | Extra |
+----------+--------+------+-----+---------+-------+
| emp_id   | int    | YES  |     | NULL    |       |
| emp_name | text   | YES  |     | NULL    |       |
| salary   | double | YES  |     | NULL    |       |
| doj      | date   | YES  |     | NULL    |       |
+----------+--------+------+-----+---------+-------+
4 rows in set (0.04 sec)

mysql> desc employee;
+----------+--------+------+-----+---------+-------+
| Field    | Type   | Null | Key | Default | Extra |
+----------+--------+------+-----+---------+-------+
| emp_id   | int    | YES  |     | NULL    |       |
| emp_name | text   | YES  |     | NULL    |       |
| salary   | double | YES  |     | NULL    |       |
| doj      | date   | YES  |     | NULL    |       |
+----------+--------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee add coloumn deptno int;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'deptno int' at line 1
mysql> alter table employee add column deptno int;
Query OK, 0 rows affected (0.17 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> desc employee;
+----------+--------+------+-----+---------+-------+
| Field    | Type   | Null | Key | Default | Extra |
+----------+--------+------+-----+---------+-------+
| emp_id   | int    | YES  |     | NULL    |       |
| emp_name | text   | YES  |     | NULL    |       |
| salary   | double | YES  |     | NULL    |       |
| doj      | date   | YES  |     | NULL    |       |
| deptno   | int    | YES  |     | NULL    |       |
+----------+--------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table employee(address text,gender char(1));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(address text,gender char(1))' at line 1
mysql> alter table employee add(address text,gender char(1));
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------+---------+------+-----+---------+-------+
| Field    | Type    | Null | Key | Default | Extra |
+----------+---------+------+-----+---------+-------+
| emp_id   | int     | YES  |     | NULL    |       |
| emp_name | text    | YES  |     | NULL    |       |
| salary   | double  | YES  |     | NULL    |       |
| doj      | date    | YES  |     | NULL    |       |
| deptno   | int     | YES  |     | NULL    |       |
| address  | text    | YES  |     | NULL    |       |
| gender   | char(1) | YES  |     | NULL    |       |
+----------+---------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table employee add x text,add y text;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------+---------+------+-----+---------+-------+
| Field    | Type    | Null | Key | Default | Extra |
+----------+---------+------+-----+---------+-------+
| emp_id   | int     | YES  |     | NULL    |       |
| emp_name | text    | YES  |     | NULL    |       |
| salary   | double  | YES  |     | NULL    |       |
| doj      | date    | YES  |     | NULL    |       |
| deptno   | int     | YES  |     | NULL    |       |
| address  | text    | YES  |     | NULL    |       |
| gender   | char(1) | YES  |     | NULL    |       |
| x        | text    | YES  |     | NULL    |       |
| y        | text    | YES  |     | NULL    |       |
+----------+---------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> alter table employee drop column x;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------+---------+------+-----+---------+-------+
| Field    | Type    | Null | Key | Default | Extra |
+----------+---------+------+-----+---------+-------+
| emp_id   | int     | YES  |     | NULL    |       |
| emp_name | text    | YES  |     | NULL    |       |
| salary   | double  | YES  |     | NULL    |       |
| doj      | date    | YES  |     | NULL    |       |
| deptno   | int     | YES  |     | NULL    |       |
| address  | text    | YES  |     | NULL    |       |
| gender   | char(1) | YES  |     | NULL    |       |
| y        | text    | YES  |     | NULL    |       |
+----------+---------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table employee drop column y,drop column address;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------+---------+------+-----+---------+-------+
| Field    | Type    | Null | Key | Default | Extra |
+----------+---------+------+-----+---------+-------+
| emp_id   | int     | YES  |     | NULL    |       |
| emp_name | text    | YES  |     | NULL    |       |
| salary   | double  | YES  |     | NULL    |       |
| doj      | date    | YES  |     | NULL    |       |
| deptno   | int     | YES  |     | NULL    |       |
| gender   | char(1) | YES  |     | NULL    |       |
+----------+---------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> alter table employee modify emp_name varchar(25);
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | YES  |     | NULL    |       |
| emp_name | varchar(25) | YES  |     | NULL    |       |
| salary   | double      | YES  |     | NULL    |       |
| doj      | date        | YES  |     | NULL    |       |
| deptno   | int         | YES  |     | NULL    |       |
| gender   | char(1)     | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> alter table employee rename column emp_name to employee_name;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| emp_id        | int         | YES  |     | NULL    |       |
| employee_name | varchar(25) | YES  |     | NULL    |       |
| salary        | double      | YES  |     | NULL    |       |
| doj           | date        | YES  |     | NULL    |       |
| deptno        | int         | YES  |     | NULL    |       |
| gender        | char(1)     | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> rename table employee to emp;
Query OK, 0 rows affected (0.06 sec)

mysql> desc emp;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| emp_id        | int         | YES  |     | NULL    |       |
| employee_name | varchar(25) | YES  |     | NULL    |       |
| salary        | double      | YES  |     | NULL    |       |
| doj           | date        | YES  |     | NULL    |       |
| deptno        | int         | YES  |     | NULL    |       |
| gender        | char(1)     | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_prolifics |
+---------------------+
| emp                 |
+---------------------+
1 row in set (0.00 sec)

mysql> insert into emp values(101,"ajay saxena",25000.00,'2023-06-15',10,'m');
Query OK, 1 row affected (0.10 sec)

mysql> select * from epm;
ERROR 1146 (42S02): Table 'prolifics.epm' doesn't exist
mysql> select * from emp;
+--------+---------------+--------+------------+--------+--------+
| emp_id | employee_name | salary | doj        | deptno | gender |
+--------+---------------+--------+------------+--------+--------+
|    101 | ajay saxena   |  25000 | 2023-06-15 |     10 | m      |
+--------+---------------+--------+------------+--------+--------+
1 row in set (0.00 sec)

mysql> insert into emp values(102,"babu",26000.00,'2019-06-30',10,'m'),(103,"charan",27000.00,sysdate(),10,'m');
Query OK, 2 rows affected, 1 warning (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 1

mysql> select * from emp;
+--------+---------------+--------+------------+--------+--------+
| emp_id | employee_name | salary | doj        | deptno | gender |
+--------+---------------+--------+------------+--------+--------+
|    101 | ajay saxena   |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu          |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan        |  27000 | 2023-07-27 |     10 | m      |
+--------+---------------+--------+------------+--------+--------+
3 rows in set (0.00 sec)

mysql> insert into emp(emp-id,employee_name) values(104,"dinesh karthik");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-id,employee_name) values(104,"dinesh karthik")' at line 1
mysql> insert into emp(emp_id,employee_name) values(104,"dinesh karthik");
Query OK, 1 row affected (0.02 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
4 rows in set (0.00 sec)

mysql> insert into emp values(106,"jaya",null,null,null,null);
Query OK, 1 row affected (0.03 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    106 | jaya           |   NULL | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
5 rows in set (0.00 sec)

mysql> insert into emp(employee_name,emp_id,salary)values("sasi",107,30000.00);
Query OK, 1 row affected (0.03 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    106 | jaya           |   NULL | NULL       |   NULL | NULL   |
|    107 | sasi           |  30000 | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
6 rows in set (0.00 sec)

mysql> set autocommit=0;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into emp values(108,"sai",36666.00,sysdate(),10,'m');
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    106 | jaya           |   NULL | NULL       |   NULL | NULL   |
|    107 | sasi           |  30000 | NULL       |   NULL | NULL   |
|    108 | sai            |  36666 | 2023-07-27 |     10 | m      |
+--------+----------------+--------+------------+--------+--------+
7 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    106 | jaya           |   NULL | NULL       |   NULL | NULL   |
|    107 | sasi           |  30000 | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
6 rows in set (0.00 sec)

mysql> insert into emp values(109,"ram",67466.00);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into emp values(109,"ram",67466.00,null,null,null);
Query OK, 1 row affected (0.00 sec)

mysql> commit;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    106 | jaya           |   NULL | NULL       |   NULL | NULL   |
|    107 | sasi           |  30000 | NULL       |   NULL | NULL   |
|    109 | ram            |  67466 | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
7 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    106 | jaya           |   NULL | NULL       |   NULL | NULL   |
|    107 | sasi           |  30000 | NULL       |   NULL | NULL   |
|    109 | ram            |  67466 | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
7 rows in set (0.00 sec)

mysql> delete from emp;
Query OK, 7 rows affected (0.02 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    106 | jaya           |   NULL | NULL       |   NULL | NULL   |
|    107 | sasi           |  30000 | NULL       |   NULL | NULL   |
|    109 | ram            |  67466 | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
7 rows in set (0.00 sec)

mysql> delete from emp where salary>50000;
Query OK, 1 row affected (0.02 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    106 | jaya           |   NULL | NULL       |   NULL | NULL   |
|    107 | sasi           |  30000 | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
6 rows in set (0.00 sec)

mysql> update emp set emp_id=105,salary=50000 where employee_name like "jaya";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    107 | sasi           |  30000 | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
6 rows in set (0.00 sec)

mysql> update emp set emp_id=106,salary=50000 where employee_name like "sasi";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
6 rows in set (0.00 sec)

mysql> commit;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
6 rows in set (0.00 sec)

mysql> savepoint A;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into emp values(107,"vardhan",54343.00,sysdate(),11,'m');
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> savepoint B;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
7 rows in set (0.00 sec)

mysql> delete from emp where emp_id=107;
Query OK, 1 row affected (0.00 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
+--------+----------------+--------+------------+--------+--------+
6 rows in set (0.00 sec)

mysql> rollback to B;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
7 rows in set (0.00 sec)

mysql> select all * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
7 rows in set (0.00 sec)

mysql> insert into emp values(107,"vardhan",54343,sysdate(),11,'m');
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> select all * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
8 rows in set (0.00 sec)

mysql> select distinct * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
7 rows in set (0.02 sec)

mysql> select distinct from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from emp' at line 1
mysql> select distinct * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
7 rows in set (0.00 sec)

mysql> select emp_id,employee_name from emp;
+--------+----------------+
| emp_id | employee_name  |
+--------+----------------+
|    101 | ajay saxena    |
|    102 | babu           |
|    103 | charan         |
|    104 | dinesh karthik |
|    105 | jaya           |
|    106 | sasi           |
|    107 | vardhan        |
|    107 | vardhan        |
+--------+----------------+
8 rows in set (0.00 sec)

mysql> create table emp-copy as  select * from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-copy as  select * from emp' at line 1
mysql> create table empcopy as  select * from emp;
Query OK, 8 rows affected (0.12 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> show tables;
+---------------------+
| Tables_in_prolifics |
+---------------------+
| emp                 |
| empcopy             |
+---------------------+
2 rows in set (0.00 sec)

mysql> selct * from empcopy;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selct * from empcopy' at line 1
mysql> select * from empcopy;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |   NULL | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
8 rows in set (0.00 sec)

mysql> select * from emp where salary >=30000;
+--------+---------------+--------+------------+--------+--------+
| emp_id | employee_name | salary | doj        | deptno | gender |
+--------+---------------+--------+------------+--------+--------+
|    105 | jaya          |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi          |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan       |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan       |  54343 | 2023-07-27 |     11 | m      |
+--------+---------------+--------+------------+--------+--------+
4 rows in set (0.00 sec)

mysql> update emp set salary=31000 where emp_id=104;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
8 rows in set (0.00 sec)

mysql> select * from emp where sal>=30000 and sal<=50000;
ERROR 1054 (42S22): Unknown column 'sal' in 'where clause'
mysql> select * from emp where salary>=30000 and salary<=50000;
+--------+----------------+--------+------+--------+--------+
| emp_id | employee_name  | salary | doj  | deptno | gender |
+--------+----------------+--------+------+--------+--------+
|    104 | dinesh karthik |  31000 | NULL |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL |   NULL | NULL   |
+--------+----------------+--------+------+--------+--------+
3 rows in set (0.00 sec)

mysql> select * from emp where deptno in(10,11);
+--------+---------------+--------+------------+--------+--------+
| emp_id | employee_name | salary | doj        | deptno | gender |
+--------+---------------+--------+------------+--------+--------+
|    101 | ajay saxena   |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu          |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan        |  27000 | 2023-07-27 |     10 | m      |
|    107 | vardhan       |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan       |  54343 | 2023-07-27 |     11 | m      |
+--------+---------------+--------+------------+--------+--------+
5 rows in set (0.00 sec)

mysql> insert into emp values(108,"ram",78742.00,sysdate(),11,'m');
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> select * from emp where employee_name like 'A%';
+--------+---------------+--------+------------+--------+--------+
| emp_id | employee_name | salary | doj        | deptno | gender |
+--------+---------------+--------+------------+--------+--------+
|    101 | ajay saxena   |  25000 | 2023-06-15 |     10 | m      |
+--------+---------------+--------+------------+--------+--------+
1 row in set (0.00 sec)

mysql> select * from emp where employee_name like 'v%';
+--------+---------------+--------+------------+--------+--------+
| emp_id | employee_name | salary | doj        | deptno | gender |
+--------+---------------+--------+------------+--------+--------+
|    107 | vardhan       |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan       |  54343 | 2023-07-27 |     11 | m      |
+--------+---------------+--------+------------+--------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp where employee_name like '%an';
+--------+---------------+--------+------------+--------+--------+
| emp_id | employee_name | salary | doj        | deptno | gender |
+--------+---------------+--------+------------+--------+--------+
|    103 | charan        |  27000 | 2023-07-27 |     10 | m      |
|    107 | vardhan       |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan       |  54343 | 2023-07-27 |     11 | m      |
+--------+---------------+--------+------------+--------+--------+
3 rows in set (0.00 sec)

mysql> select * from emp orderby emp_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp_id' at line 1
mysql> select * from emp order by emp_id;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp order by emp_id descending;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'descending' at line 1
mysql> select * from emp order by emp_id desc;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
+--------+----------------+--------+------------+--------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp order by emp_id,salary;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp order by emp_id,salary,employee_name;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | babu           |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
9 rows in set (0.01 sec)

mysql> update emp employee_name="rameshbabu" where emp_id=102;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '="rameshbabu" where emp_id=102' at line 1
mysql> update emp set employee_name="rameshbabu" where emp_id=102;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | rameshbabu     |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp order by employee_name,emp_id;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |
|    102 | rameshbabu     |  26000 | 2019-06-30 |     10 | m      |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp order by emp_id,employee_name;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | rameshbabu     |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp order by salary;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | rameshbabu     |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp order by salary desc ;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    102 | rameshbabu     |  26000 | 2019-06-30 |     10 | m      |
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
+--------+----------------+--------+------------+--------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp where doj=null;
Empty set (0.00 sec)

mysql> select * from emp where doj like null;
Empty set (0.00 sec)

mysql> select * from emp where doj like Null;
Empty set (0.00 sec)

mysql> select * from emp where deptno like Null;
Empty set (0.00 sec)

mysql> select emp_id from emp where deptno=null;
Empty set (0.00 sec)

mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+
| emp_id | employee_name  | salary | doj        | deptno | gender |
+--------+----------------+--------+------------+--------+--------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |
|    102 | rameshbabu     |  26000 | 2019-06-30 |     10 | m      |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |
+--------+----------------+--------+------------+--------+--------+
9 rows in set (0.00 sec)

mysql> select emp_id from emp where deptno=10;
+--------+
| emp_id |
+--------+
|    101 |
|    102 |
|    103 |
+--------+
3 rows in set (0.00 sec)

mysql> select emp_id from emp where deptno=null;
Empty set (0.00 sec)

mysql> select emp_id,employee_name from emp;
+--------+----------------+
| emp_id | employee_name  |
+--------+----------------+
|    101 | ajay saxena    |
|    102 | rameshbabu     |
|    103 | charan         |
|    104 | dinesh karthik |
|    105 | jaya           |
|    106 | sasi           |
|    107 | vardhan        |
|    107 | vardhan        |
|    108 | ram            |
+--------+----------------+
9 rows in set (0.00 sec)

mysql> select emp_id,employee_name,salary * 0.1 as "Bonus" from emp;
+--------+----------------+-------------------+
| emp_id | employee_name  | Bonus             |
+--------+----------------+-------------------+
|    101 | ajay saxena    |              2500 |
|    102 | rameshbabu     |              2600 |
|    103 | charan         |              2700 |
|    104 | dinesh karthik |              3100 |
|    105 | jaya           |              5000 |
|    106 | sasi           |              5000 |
|    107 | vardhan        |            5434.3 |
|    107 | vardhan        |            5434.3 |
|    108 | ram            | 7874.200000000001 |
+--------+----------------+-------------------+
9 rows in set (0.00 sec)

mysql> alter table emp add column incentives double;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update set incentives=1000 where emp_id=102;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'set incentives=1000 where emp_id=102' at line 1
mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+------------+
| emp_id | employee_name  | salary | doj        | deptno | gender | incentives |
+--------+----------------+--------+------------+--------+--------+------------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |       NULL |
|    102 | rameshbabu     |  26000 | 2019-06-30 |     10 | m      |       NULL |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |       NULL |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |       NULL |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |       NULL |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |       NULL |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |       NULL |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |       NULL |
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |       NULL |
+--------+----------------+--------+------------+--------+--------+------------+
9 rows in set (0.00 sec)

mysql> update emp  set incentives=1000 where emp_id=102;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp  set incentives=1500 where emp_id=103;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp  set incentives=1500 where emp_id=104;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp  set incentives=1500 where emp_id=106;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp  set incentives=0 where incentives is null;
Query OK, 5 rows affected (0.00 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> selct * from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selct * from emp' at line 1
mysql> select * from emp;
+--------+----------------+--------+------------+--------+--------+------------+
| emp_id | employee_name  | salary | doj        | deptno | gender | incentives |
+--------+----------------+--------+------------+--------+--------+------------+
|    101 | ajay saxena    |  25000 | 2023-06-15 |     10 | m      |          0 |
|    102 | rameshbabu     |  26000 | 2019-06-30 |     10 | m      |       1000 |
|    103 | charan         |  27000 | 2023-07-27 |     10 | m      |       1500 |
|    104 | dinesh karthik |  31000 | NULL       |   NULL | NULL   |       1500 |
|    105 | jaya           |  50000 | NULL       |   NULL | NULL   |          0 |
|    106 | sasi           |  50000 | NULL       |   NULL | NULL   |       1500 |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |          0 |
|    107 | vardhan        |  54343 | 2023-07-27 |     11 | m      |          0 |
|    108 | ram            |  78742 | 2023-07-27 |     11 | m      |          0 |
+--------+----------------+--------+------------+--------+--------+------------+
9 rows in set (0.00 sec)

mysql> select count(*) from emp;
+----------+
| count(*) |
+----------+
|        9 |
+----------+
1 row in set (0.03 sec)

mysql> select count(*) as totalemployees from emp;
+----------------+
| totalemployees |
+----------------+
|              9 |
+----------------+
1 row in set (0.00 sec)

mysql> select count(incentives) as incentives where incentives>0;
ERROR 1054 (42S22): Unknown column 'incentives' in 'field list'
mysql> select count(incentives) as incentives from emp where incentives>0;
+------------+
| incentives |
+------------+
|          4 |
+------------+
1 row in set (0.01 sec)

mysql> select emp_id from emp where max(salary);
ERROR 1111 (HY000): Invalid use of group function
mysql> select max(salary) from emp;
+-------------+
| max(salary) |
+-------------+
|       78742 |
+-------------+
1 row in set (0.00 sec)

mysql> select emp_id from emp where salary=78742;
+--------+
| emp_id |
+--------+
|    108 |
+--------+
1 row in set (0.00 sec)

mysql> select sum(salary)+sum(incentives) as "total amount paid" from emp;
+-------------------+
| total amount paid |
+-------------------+
|            401928 |
+-------------------+
1 row in set (0.01 sec)

mysql> select sum(incentives) as "total incentives paid" from emp;
+-----------------------+
| total incentives paid |
+-----------------------+
|                  5500 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select max(salary) from emp;
+-------------+
| max(salary) |
+-------------+
|       78742 |
+-------------+
1 row in set (0.00 sec)

mysql> craete table student(reg_id text,name text,gender  default 'm',age int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'craete table student(reg_id text,name text,gender  default 'm',age int)' at line 1
mysql> create table student(reg_id text,name text,gender  default 'm',age int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'default 'm',age int)' at line 1
mysql> create table student(reg_id text,name text,gender char(1)  default 'm',age int);
Query OK, 0 rows affected (0.08 sec)

mysql> desc student;
+--------+---------+------+-----+---------+-------+
| Field  | Type    | Null | Key | Default | Extra |
+--------+---------+------+-----+---------+-------+
| reg_id | text    | YES  |     | NULL    |       |
| name   | text    | YES  |     | NULL    |       |
| gender | char(1) | YES  |     | m       |       |
| age    | int     | YES  |     | NULL    |       |
+--------+---------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.06 sec)

mysql> create table student(reg_id text not null,name text,gender char(1) default 'm',age int);
Query OK, 0 rows affected (0.06 sec)

mysql> desc student;
+--------+---------+------+-----+---------+-------+
| Field  | Type    | Null | Key | Default | Extra |
+--------+---------+------+-----+---------+-------+
| reg_id | text    | NO   |     | NULL    |       |
| name   | text    | YES  |     | NULL    |       |
| gender | char(1) | YES  |     | m       |       |
| age    | int     | YES  |     | NULL    |       |
+--------+---------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table student(reg_id text primary key,name text,gender char(1) default 'm',age int);
ERROR 1050 (42S01): Table 'student' already exists
mysql> drop table student;
Query OK, 0 rows affected (0.03 sec)

mysql> create table student(reg_id text primary key,name text,gender char(1) default 'm',age int);
ERROR 1170 (42000): BLOB/TEXT column 'reg_id' used in key specification without a key length
mysql> create table student(reg_id text primarykey,name text,gender char(1) default 'm',age int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primarykey,name text,gender char(1) default 'm',age int)' at line 1
mysql> create table student(reg_id text not null,name text,gender char(1) default 'm',age int);
Query OK, 0 rows affected (0.07 sec)

mysql> desc student;
+--------+---------+------+-----+---------+-------+
| Field  | Type    | Null | Key | Default | Extra |
+--------+---------+------+-----+---------+-------+
| reg_id | text    | NO   |     | NULL    |       |
| name   | text    | YES  |     | NULL    |       |
| gender | char(1) | YES  |     | m       |       |
| age    | int     | YES  |     | NULL    |       |
+--------+---------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into student(name,age) values("vijay",10);
ERROR 1364 (HY000): Field 'reg_id' doesn't have a default value
mysql> insert into student(name,age) values(1207,"vijay",10);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into student(reg_id,name,age) values(1207,"vijay",10);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+--------+------+
| reg_id | name  | gender | age  |
+--------+-------+--------+------+
| 1207   | vijay | m      |   10 |
+--------+-------+--------+------+
1 row in set (0.00 sec)

mysql> insert into student values(1207,"kiran",11);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into student values(1207,"kiran",'m',11);
Query OK, 1 row affected (0.00 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.04 sec)

mysql> create table student(reg_id int unique,name text , age int);
Query OK, 0 rows affected (0.20 sec)

mysql> desc student;
+--------+------+------+-----+---------+-------+
| Field  | Type | Null | Key | Default | Extra |
+--------+------+------+-----+---------+-------+
| reg_id | int  | YES  | UNI | NULL    |       |
| name   | text | YES  |     | NULL    |       |
| age    | int  | YES  |     | NULL    |       |
+--------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into student(7001,"sai",20
    -> insert into student(7001,"sai",20);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '7001,"sai",20
insert into student(7001,"sai",20)' at line 1
mysql> insert into student values (7001,"sai",20);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+------+------+
| reg_id | name | age  |
+--------+------+------+
|   7001 | sai  |   20 |
+--------+------+------+
1 row in set (0.00 sec)

mysql> insert into student values (7001,"vardhan",20);
ERROR 1062 (23000): Duplicate entry '7001' for key 'student.reg_id'
mysql> drop table student;
Query OK, 0 rows affected (0.04 sec)

mysql> create table student(reg_id int unique not null,name text , age int);
Query OK, 0 rows affected (0.07 sec)

mysql> desc student;
+--------+------+------+-----+---------+-------+
| Field  | Type | Null | Key | Default | Extra |
+--------+------+------+-----+---------+-------+
| reg_id | int  | NO   | PRI | NULL    |       |
| name   | text | YES  |     | NULL    |       |
| age    | int  | YES  |     | NULL    |       |
+--------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into student values(101,"ajay",20);
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values(102,"babu",20);
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values(102,"charan",20);
ERROR 1062 (23000): Duplicate entry '102' for key 'student.reg_id'
mysql> insert into student(name,age)  values("babu",20);
ERROR 1364 (HY000): Field 'reg_id' doesn't have a default value
mysql> insert into student values(null,"charan",20);
ERROR 1048 (23000): Column 'reg_id' cannot be null
mysql> drop table student;
Query OK, 0 rows affected (0.04 sec)

mysql> create table student(reg_id int primary key,name text , age int);
Query OK, 0 rows affected (0.08 sec)

mysql> desc student;
+--------+------+------+-----+---------+-------+
| Field  | Type | Null | Key | Default | Extra |
+--------+------+------+-----+---------+-------+
| reg_id | int  | NO   | PRI | NULL    |       |
| name   | text | YES  |     | NULL    |       |
| age    | int  | YES  |     | NULL    |       |
+--------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into student values(101,"charan",20);
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values(102,"kiran",20);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+--------+------+
| reg_id | name   | age  |
+--------+--------+------+
|    101 | charan |   20 |
|    102 | kiran  |   20 |
+--------+--------+------+
2 rows in set (0.00 sec)

mysql> drop student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student' at line 1
mysql> drop student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student' at line 1
mysql> drop table emp;
ERROR 2013 (HY000): Lost connection to MySQL server during query
No connection. Trying to reconnect...
Connection id:    15
Current database: prolifics

Query OK, 0 rows affected (0.13 sec)

mysql> use prolifics;
Database changed
mysql> drop table emp;
ERROR 1051 (42S02): Unknown table 'prolifics.emp'
mysql> create table department(deptno int primary key,deptname text,location text);
Query OK, 0 rows affected (0.07 sec)

mysql> insert into department values(10,"sales","chennai"),(20,"It","hyderabad"),(30,"finance","mumbai");
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> show tables;
+---------------------+
| Tables_in_prolifics |
+---------------------+
| department          |
| empcopy             |
| student             |
+---------------------+
3 rows in set (0.04 sec)

mysql> select * from department;
+--------+----------+-----------+
| deptno | deptname | location  |
+--------+----------+-----------+
|     10 | sales    | chennai   |
|     20 | It       | hyderabad |
|     30 | finance  | mumbai    |
+--------+----------+-----------+
3 rows in set (0.00 sec)

mysql> desc department;
+----------+------+------+-----+---------+-------+
| Field    | Type | Null | Key | Default | Extra |
+----------+------+------+-----+---------+-------+
| deptno   | int  | NO   | PRI | NULL    |       |
| deptname | text | YES  |     | NULL    |       |
| location | text | YES  |     | NULL    |       |
+----------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table employee(empid int,empname text,salary double,deptno int ,forigen key(deptno) references department(deptno) on delete cascade);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key(deptno) references department(deptno) on delete cascade)' at line 1
mysql> create table employee(empid int,empname text,salary double,deptno int ,forigen key(deptno) references department(deptno) on delete cascade);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key(deptno) references department(deptno) on delete cascade)' at line 1
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> create table employee(empid int,empname text,salary double,deptno int ,forigen key(deptno)
    -> references department(deptno) on delete cascade);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key(deptno)
references department(deptno) on delete cascade)' at line 1
mysql> create table employee(empid int,empname text,salary double,deptno int ,foreign key(deptno)
    -> references department(deptno) on delete cascade);
Query OK, 0 rows affected (0.12 sec)

mysql> insert into employee values(101,"ajay",1000,10);
Query OK, 1 row affected (0.18 sec)

mysql> insert into employee values(102,"vardhan",1000,20);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee values(103,"sai",1000,30);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values(104,"roopesh",1000,40);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`prolifics`.`employee`, CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`deptno`) REFERENCES `department` (`deptno`) ON DELETE CASCADE)
mysql> insert into employee values(104,"roopesh",20),(105,"manisai",10),(106,"saiteja",30);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into employee values(104,"roopesh",20);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into employee values(104,"roopesh",1000,20),(105,"manisai",1000,10),(106,"saiteja",1000,30);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from department;
+--------+----------+-----------+
| deptno | deptname | location  |
+--------+----------+-----------+
|     10 | sales    | chennai   |
|     20 | It       | hyderabad |
|     30 | finance  | mumbai    |
+--------+----------+-----------+
3 rows in set (0.00 sec)

mysql> select * from employee;
+-------+---------+--------+--------+
| empid | empname | salary | deptno |
+-------+---------+--------+--------+
|   101 | ajay    |   1000 |     10 |
|   102 | vardhan |   1000 |     20 |
|   103 | sai     |   1000 |     30 |
|   104 | roopesh |   1000 |     20 |
|   105 | manisai |   1000 |     10 |
|   106 | saiteja |   1000 |     30 |
+-------+---------+--------+--------+
6 rows in set (0.00 sec)

mysql> delete from department where deptno=10;
Query OK, 1 row affected (0.05 sec)

mysql> select * from department;
+--------+----------+-----------+
| deptno | deptname | location  |
+--------+----------+-----------+
|     20 | It       | hyderabad |
|     30 | finance  | mumbai    |
+--------+----------+-----------+
2 rows in set (0.00 sec)

mysql> select * from employee;
+-------+---------+--------+--------+
| empid | empname | salary | deptno |
+-------+---------+--------+--------+
|   102 | vardhan |   1000 |     20 |
|   103 | sai     |   1000 |     30 |
|   104 | roopesh |   1000 |     20 |
|   106 | saiteja |   1000 |     30 |
+-------+---------+--------+--------+
4 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> create table account(acc_no int primary key auto_increment,balance decimal,opened_date date);
Query OK, 0 rows affected (0.12 sec)

mysql> insert into account (balance,opened_date) values(5000,'2023-05-23');
Query OK, 1 row affected (0.03 sec)

mysql> select * from account;
+--------+---------+-------------+
| acc_no | balance | opened_date |
+--------+---------+-------------+
|      1 |    5000 | 2023-05-23  |
+--------+---------+-------------+
1 row in set (0.00 sec)

mysql> insert into account (balance,opened_date) values(50000,'2023-05-24');
Query OK, 1 row affected (0.02 sec)

mysql> insert into account (balance,opened_date) values(50000,'2023-05-24');
Query OK, 1 row affected (0.03 sec)

mysql> select * from account;
+--------+---------+-------------+
| acc_no | balance | opened_date |
+--------+---------+-------------+
|      1 |    5000 | 2023-05-23  |
|      2 |   50000 | 2023-05-24  |
|      3 |   50000 | 2023-05-24  |
+--------+---------+-------------+
3 rows in set (0.00 sec)

mysql> drop table account;
Query OK, 0 rows affected (0.04 sec)

mysql> create table account(acc_no int primary key,balance decimal,opened_date date)auto_increment=5001;
Query OK, 0 rows affected (0.06 sec)

mysql> insert into account(balance,opened_date) values(1000,'2023-07-07');
ERROR 1364 (HY000): Field 'acc_no' doesn't have a default value
mysql> drop table account;
Query OK, 0 rows affected (0.05 sec)

mysql>
mysql>
mysql>
mysql>
mysql> create table account(acc_no int primary key auto_increment,balance decimal,opened_date date)auto_increment=5001;
Query OK, 0 rows affected (0.07 sec)

mysql> insert into account(balance,opened_date) values(1000,'2023-07-07');
Query OK, 1 row affected (0.02 sec)

mysql> insert into account(balance,opened_date) values(10000,'2023-07-07');
Query OK, 1 row affected (0.01 sec)

mysql> select * from account;
+--------+---------+-------------+
| acc_no | balance | opened_date |
+--------+---------+-------------+
|   5001 |    1000 | 2023-07-07  |
|   5002 |   10000 | 2023-07-07  |
+--------+---------+-------------+
2 rows in set (0.00 sec)

mysql>
