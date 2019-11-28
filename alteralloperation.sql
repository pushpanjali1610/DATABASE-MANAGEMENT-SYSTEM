SQL*It is to add any colomn for table so alter table table_name add colomn Name datatype and after to add colomn.  
SQL> alter table std add
  2  (state varchar(12)
  3  );

Table altered.
SQL*after  this operation perform structure of the table.

SQL> desc std
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(15)
 DEPT                                               VARCHAR2(4)
 CITY                                               VARCHAR2(10)
 DOB                                       NOT NULL DATE
 GENDER                                             VARCHAR2(1)
 STATE                                              VARCHAR2(12)


SQL*It is to drop any colomn for table so alter table table_name  drop colomn_name  and after to drop colomn.

SQL> alter table std drop (
  2  city
  3  );

Table altered.

SQL*after  this operation perform structure of the table.

SQL> desc std;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(15)
 DEPT                                               VARCHAR2(4)
 DOB                                       NOT NULL DATE
 GENDER                                             VARCHAR2(1)
 STATE                                              VARCHAR2(12)



SQL*It is to add any colomn for table so alter table table_name modify colomn_name datatype and after to modify colomn.

SQL> alter table std modify (
  2  Roll_no varchar(2)
  3  );

Table altered.
SQL*after  this operation perform structure of the table.

SQL> desc std;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL VARCHAR2(2)
 NAME                                               VARCHAR2(15)
 DEPT                                               VARCHAR2(4)
 DOB                                       NOT NULL DATE
 GENDER                                             VARCHAR2(1)
 STATE                                              VARCHAR2(12)

SQL*It is to table rename  so rename old_table_name to new_table_name modify and after to rename the table.

SQL> rename std to student;

Table renamed.

SQL*after  this operation perform structure of the table .It is not describe the structure of the table std because tale name change.

SQL> desc std;
ERROR:
ORA-04043: object std does not exist

SQL*after  this operation perform structure of the table.

SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL VARCHAR2(2)
 NAME                                               VARCHAR2(15)
 DEPT                                               VARCHAR2(4)
 DOB                                       NOT NULL DATE
 GENDER                                             VARCHAR2(1)
 STATE                                              VARCHAR2(12)

SQL> drop table student;
table dropped

SQL> desc student;
ERROR:
ORA-04043: object student does not exist


