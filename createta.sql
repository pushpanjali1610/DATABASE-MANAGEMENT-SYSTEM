
SQL> create table std(
  2  Roll_no int PRIMARY KEY,
  3  Name  varchar(15),
  4  Dept varchar(4),
  5  City varchar(10),
  6  Dob date NOT NULL,
  7  Gender varchar(1)
  8  );

Table created

SQL*describbe the structure of the table;

SQL> desc std;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(15)
 DEPT                                               VARCHAR2(4)
 CITY                                               VARCHAR2(10)
 DOB                                       NOT NULL DATE
 GENDER                                             VARCHAR2(1)
