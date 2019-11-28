SQL* It is the create table so syntex is "create table table_name (colomn_name1  datatype1,  colomn_name2  datatype2 ,...)"; 
SQL> create table employee (
  2  ssn int,
  3  name varchar(10),
  4  bdate date,
  5  salary int,
  6  dept_name varchar(20)
  7  );

Table created.

SQL* Above create  the table and insert values in this table so query is "insert into table_name values(colomn_values)". 
SQL> insert into employee
  2  values (1,'narayan','20-feb-1996',6000,'vesno');

1 row created.

SQL> insert into employee
  2  values (2,'aadarsh','02-jun-1994',6500,'krishna');

1 row created.

SQL> insert into employee
  2  values (3,'aakash','13-jul-2001',7500,'krishna');

1 row created.

SQL> insert into employee
  2  values (4,'arunahir','02-feb-2000',9200,'super');

1 row created.

SQL> insert into employee
  2  values (5,'rajkumar','17-feb-1990',10000,'civil');

1 row created.

SQL* select commond to use select all attributes so its query is "select * from table_name". 

SQL> select * from employee;

       SSN NAME       BDATE         SALARY DEPT_NAME
---------- ---------- --------- ---------- --------------------
         1 narayan    20-FEB-96       6000 vesno
         2 aadarsh    02-JUN-94       6500 krishna
         3 aakash     13-JUL-01       7500 krishna
         4 arunahir   02-FEB-00       9200 super
         5 rajkumar   17-FEB-90      10000 civil
SQL*It is the create view .
SQL> create view v1 as select ssn , name,salary from employee;

View created.

SQL> select * from v1;

       SSN NAME           SALARY
---------- ---------- ----------
         1 narayan          6000
         2 aadarsh          6500
         3 aakash           7500
         4 arunahir         9200
         5 rajkumar        10000

SQL> create view v2 as select ssn , name from employee;

View created.

SQL> select * from v2;

       SSN NAME
---------- ----------
         1 narayan
         2 aadarsh
         3 aakash
         4 arunahir
         5 rajkumar


SQL> create view v3 as select ssn , name ,dept_name ,salary from employee
  2  where salary >5000;

View created.

SQL> select * from v3;

       SSN NAME       DEPT_NAME                SALARY
---------- ---------- -------------------- ----------
         1 narayan    vesno                      6000
         2 aadarsh    krishna                    6500
         3 aakash     krishna                    7500
         4 arunahir   super                      9200
         5 rajkumar   civil                     10000

SQL> create view v4 as select name ,dept_name ,salary from employee;

View created.

SQL> select * from v4;

NAME       DEPT_NAME                SALARY
---------- -------------------- ----------
narayan    vesno                      6000
aadarsh    krishna                    6500
aakash     krishna                    7500
arunahir   super                      9200
rajkumar   civil                     10000

SQL* drop view 
SQL> drop view v1;

View dropped.

SQL> drop view v2;

View dropped.

SQL> drop view v3;

View dropped.

SQL> drop view v4;

View dropped.
