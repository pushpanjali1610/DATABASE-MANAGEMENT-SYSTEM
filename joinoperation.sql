SQL* It is the create table so syntex is "create table table_name (colomn_name1  datatype1,  colomn_name2  datatype2 ,...);"
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



SQL> create table comp (
  2  sn int,
  3  c_name varchar(10),
  4  c_add varchar(20)
  5  );

Table created.

SQL> insert into comp
  2  values (1,'P&G','Indore');
Enter value for g: 5
old   2: values (1,'P&G','Indore')


SQL> insert into comp
  2  values (1,'P&G','mandideep');

1 row created.

SQL> insert into comp
  2  values (2,'HEG','mandideep');

1 row created.

SQL> insert into comp
  2  values (2,'HEG','Pure');

1 row created.

SQL> insert into comp
  2  values (2,'makson','satlpur');

1 row created.

SQL> insert into comp
  2  values (2,'eicher','satlpur');

1 row created.

SQL> insert into comp
  2  values (3,'eicher','indore');

1 row created.

SQL> insert into comp
  2  values (3,'netlink','hydrabad');

1 row created.

SQL> insert into comp
  2  values (4,'netlink','satlapur');

1 row created.

SQL> select * from comp;

        SN C_NAME     C_ADD
---------- ---------- --------------------
         1 P&G         Indore
         1 P&G    mandideep
         2 HEG        mandideep
         2 HEG        Pure
         2 makson     satlpur
         2 eicher     satlpur
         3 eicher     indore
         3 netlink    hydrabad
         4 netlink    satlapur

9 rows selected.

SQL* INNER JOIN 

SQL> select ssn,name,dept_name,salary from employee
  2  inner join comp
  3  ON employee.ssn = comp.sn;

       SSN NAME       DEPT_NAME                SALARY
---------- ---------- -------------------- ----------
         1 narayan    vesno                      6000
         1 narayan    vesno                      6000
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         3 aakash     krishna                    7500
         3 aakash     krishna                    7500
         4 arunahir   super                      9200

9 rows selected.

SQL* LEFT JOIN
SQL> select ssn,name,dept_name,salary from employee
  2  left join comp
  3  ON employee.ssn = comp.sn;

       SSN NAME       DEPT_NAME                SALARY
---------- ---------- -------------------- ----------
         1 narayan    vesno                      6000
         1 narayan    vesno                      6000
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         3 aakash     krishna                    7500
         3 aakash     krishna                    7500
         4 arunahir   super                      9200
         5 rajkumar   civil                     10000

10 rows selected.

SQL*RIGHT JOIN
SQL> select ssn,name,dept_name,salary from employee
  2  right join comp
  3  ON employee.ssn = comp.sn;

       SSN NAME       DEPT_NAME                SALARY
---------- ---------- -------------------- ----------
         1 narayan    vesno                      6000
         1 narayan    vesno                      6000
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         3 aakash     krishna                    7500
         3 aakash     krishna                    7500
         4 arunahir   super                      9200

9 rows selected.

SQL*FULL JOIN 
SQL> select ssn,name,dept_name,salary from employee
  2  full join comp
  3  ON employee.ssn = comp.sn;

       SSN NAME       DEPT_NAME                SALARY
---------- ---------- -------------------- ----------
         1 narayan    vesno                      6000
         1 narayan    vesno                      6000
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         2 aadarsh    krishna                    6500
         3 aakash     krishna                    7500
         3 aakash     krishna                    7500
         4 arunahir   super                      9200
         5 rajkumar   civil                     10000

10 rows selected.

SQL>drop table employee;
  ERROR at line 1:
  ORA-00942: table or view does not exist

  SQL>drop table comp;
  ERROR at line 1:
  ORA-00942: table or view does not exist
