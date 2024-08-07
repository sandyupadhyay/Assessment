create database SQL_Assessment;

use SQL_Assessment;

create table Worker
(
	WORKER_ID int auto_increment primary KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT,
    JOINING_DATE datetime,
    DEPARTMENT varchar(100)
);


Insert into Worker (FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values
	("Monika","Arora",100000,"2014-02-20 09:00:00","HR"),
    ("Niharika","Verma",80000,"2014-06-11 09:00:00","Admin"),
    ("Vishal","Singhal",300000,"2014-02-20 09:00:00","HR"),
    ("Amitabh","Singh",500000,"2014-02-20 09:00:00","Admin"),
    ("Vivek","Bhati",500000,"2014-06-11 09:00:00","Admin"),
    ("Vipul","Diwan",200000,"2014-06-11 09:00:00","Account"),
    ("Satish","kumar",75000,"2014-1-20 09:00:00","Account"),
    ("Geetika","Chauhan",90000,"2014-04-11 09:00:00","Admin"),
    ("Sandip","Upadhyay",90000,"2014-04-11 09:00:00","Admin");
    
    select * FROM WORKER;
    
   /*1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
Ascending and DEPARTMENT Descending.*/

select * from worker order by first_name,department desc;

/*2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” 
from the Worker table. */
select * from worker where first_name in ("Vipul","Satish");

/*3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and 
contains six alphabets. */

select * from worker where first_name like "_____h";

/*4. Write an SQL query to print details of the Workers whose SALARY lies between 100000 to 300000. */

select * from worker where salary between 100000 and 300000;

/*5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. */

select distinct salary, count(*) as Duplicate_Records From worker group by salary having count(*) > 1  union all
select distinct joining_date,count(*) as  Duplicate_Records from worker group by joining_date having count(*) > 1 union all
select department,count(*) as  Duplicate_Records from worker group by department having count(*) > 1;

/*6. Write an SQL query to show the top 6 records of a table. */
select * from worker limit 6;

/*7. Write an SQL query to fetch the departments that have less than five people in them.*/

select department ,count(*) as Emp_count from worker
group by department
having count(*)<5;

/*8. Write an SQL query to show all departments along with the number of people in there. */

select department,count(*) as Emp_count from worker
group by department;

/*9. Write an SQL query to print the name of employees having the highest salary in each 
department.*/

select 	department,first_name,Last_name,Salary
from worker as worker1
where salary=(select max(salary) from worker as worker2
where worker1.department = worker2.department);

/*Question 2: Open school database, then select student table and use following SQL statements. 
TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT*/

create database school_db;
use school_db;

create table Student(
	StdID int primary key auto_increment,
    StdName varchar(100),
    Sex varchar(50),
    Percentage float(50),
    Class int (50),
    Sec varchar(50),
    Stream varchar(50),
    DOB date
);

insert into student (StdName,Sex,Percentage,Class,Sec,Stream,DOB)
values ("Surekha Joshi","Female",82,12,"A","Science","1998/08/03"),
		("MAAHI AGARWAL","Female",56,11,"C","Commerce","2008/11/23"),
        ("Sanam Verma","male",59,11,"C","Commerce","2006/06/26"),
        ("Ronit Kumar","Male",63,11,"C","Commerce","1997/11/5"),
        ("Dipesh Pulkit","Male",78,11,"B","Science","2003/09/14"),
        ("JHANAVI Puri","Female",60,11,"B","Commerce","2008/11/07"),
        ("Sanam Kumar","Male",23,12,"F","Commerce","1998/03/08"),
        ("SAHIL SARAS","Male",56,11,"C","Commerce","2008/11/07"),
        ("AKSHARA AGARWAL","Female",72,12,"B","Commerce","1996/10/01"),
        ("STUTI MISHRA","Female",39,11,"F","Science","2008/11/23"),
        ("HARSH AGARWAL","Male",42,11,"C","Science","1998/03/08"),
        ("NIKUNJ AGARWAL","Male",49,12,"C","Commerce","1998/06/28"),
        ("AKRITI SAXENA","Female",89,12,"A","Science","2008/11/23"),
        ("TANI RASTOGI","Female",82,2,"A","Science","2008/11/23");

/*1 To display all the records form STUDENT table.*/
select * from student;

/*2. To display any name and date of birth from the table STUDENT.*/
select StdName,DOB from student;

/*3. To display all students record where percentage is greater of equal to 80 FROM student table. */
select * from student where percentage >="80" ;

/*4. To display student name, stream and percentage where percentage of student is more than 80*/
select StdName,Stream,Percentage from student where percentage >80 ; 

/*5. To display all records of science students whose percentage is more than 75 form student table. */
select * from student where stream="Science" and percentage >75;





