SQL* It is the create table so syntex is "create table table_name (colomn_name1  datatype1,  colomn_name2  datatype2 ,...);"
SQL> create table books (
  2  book_no int,
  3  title varchar(15),
  4  publication varchar(15),
  5  author varchar(21),
  6  price int,
  7  quentity int,
  8  edition date
  9  );

Table created.
SQL* insert values in the create table therefore syntex "insert into table_name values (colomn_value1 , colomn_value2 ,....);"
SQL> insert into books
  2  values (211,'c++','R.S.pub','Sumitra arrora',540,10,'02-feb-2017');

1 row created.

SQL> insert into books
  2  values (156,'c++','J.J. pub','J.S. Dwevedi',1200,12,'23-july-2007');

1 row created.

SQL> insert into books
  2  values (258,'python','L.K. pub','j.G. Dwevedi',1521,20,'20-july-2019');

1 row created.

SQL> insert into books
  2  values (300,'python','K.N. pub','L.P.vedi',2000,28,'20-feb-2013');

1 row created.

SQL> insert into books
  2  values (654,'java','L.N. pub','S.D.vedi',3000,29,'20-jul-2018');

1 row created.

SQL> insert into books
  2  values (987,'java','G.H. pub','F.D.vedi',3214,30,'15-feb-2019');

1 row created.

SQL> select * from books;

   BOOK_NO TITLE           PUBLICATION     AUTHOR                     PRICE
---------- --------------- --------------- --------------------- ----------
  QUENTITY EDITION
---------- ---------
       211 c++             R.S.pub         Sumitra arrora               540
        10 02-FEB-17

       156 c++             J.J. pub        J.S. Dwevedi                1200
        12 23-JUL-07

       258 python          L.K. pub        j.G. Dwevedi                1521
        20 20-JUL-19


   BOOK_NO TITLE           PUBLICATION     AUTHOR                     PRICE
---------- --------------- --------------- --------------------- ----------
  QUENTITY EDITION
---------- ---------
       300 python          K.N. pub        L.P.vedi                    2000
        28 20-FEB-13

       654 java            L.N. pub        S.D.vedi                    3000
        29 20-JUL-18

       987 java            G.H. pub        F.D.vedi                    3214
        30 15-FEB-19

SQL* It is to select all attributes so syntex is ("select * from table_name;")
SQL> select author from books
  2  where title = 'c++';

AUTHOR
---------------------
Sumitra arrora
J.S. Dwevedi

SQL> select author from books
  2  where price>1000;

AUTHOR
---------------------
J.S. Dwevedi
j.G. Dwevedi
L.P.vedi
S.D.vedi
F.D.vedi

SQL> select title from books
  2  where price>1000;

TITLE
---------------
c++
python
python
java
java

SQL> select title ,quentity from books
  2  where quentity>10;

TITLE             QUENTITY
--------------- ----------
c++                     12
python                  20
python                  28
java                    29
java                    30


SQL> select title from books
  2  where title = 'c++' ;

TITLE
---------------
c++
c++

SQL> select title from books
  2  where title = 'c++' or title = 'java';

TITLE
---------------
c++
c++
java
java
SQL*DROP TABLE COMMOND;
SQL> drop table books;

Table dropped.

SQL> select * from books;
select * from books
              *
ERROR at line 1:
ORA-00942: table or view does not exist
