-- Question 2: Open school database, then select student table and use following SQL statements. TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT  

create database schoolDB;
use schoolDB;

create table student(
StdID int primary key,
StdName varchar(100),
Sex varchar(50),
Percentage int,
Class varchar(50),
Sec varchar(50),
Stream varchar(50),
DOB date
);

insert into Student (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB) values
(1001, 'Surekha Joshi', 'Female', 82, '12', 'A', 'Science', '1998-03-08'),
(1002, 'MAAHI AGARWAL', 'Female', 56, '11', 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'Male', 59, '11', 'C', 'Commerce', '2006-06-29'),
(1004, 'Rohit Kumar', 'Male', 63, '11', 'C', 'Commerce', '1997-11-05'),
(1005, 'Dipesh Pulkit', 'Male', 78, '11', 'B', 'Science', '2003-09-14'),
(1006, 'JAHANVI Puri', 'Female', 60, '11', 'B', 'Commerce', '2008-11-17'),
(1007, 'Sanam Kumar', 'Male', 23, '12', 'F', 'Commerce', '1998-03-08'),
(1008, 'SAHIL SARAS', 'Male', 56, '11', 'C', 'Commerce', '2008-11-17'),
(1009, 'AKSHRA AGARWAL', 'Female', 72, '12', 'B', 'Commerce', '1996-10-01'),
(1010, 'STUTI MISHRA', 'Female', 39, '11', 'F', 'Science', '2008-11-23'),
(1011, 'HARSH AGARWAL', 'Male', 42, '11', 'C', 'Science', '1998-03-08'),
(1012, 'NIKUNJ AGARWAL', 'Male', 49, '12', 'C', 'Commerce', '1998-06-28'),
(1013, 'AKRITI SAXENA', 'Female', 89, '12', 'A', 'Science', '2008-11-23'),
(1014, 'TANI RASTOGI', 'Female', 82, '12', 'A', 'Science', '2008-11-23');

-- 1 To display all the records form STUDENT table. SELECT * FROM student ;  
 select* from Student;
 
 -- 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB FROM student 
  select StdName, DOB from Student;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table. SELECT * FROM student WHERE percentage >= 80;  
select* from Student
where Percentage >= 80;

-- 4. To display student name, stream and percentage where percentage of student is more than 80 SELECT StdName, Stream, Percentage WHERE percentage > 80; 
select StdName, Stream, Percentage
from Student
where Percentage >80;

-- 5. To display all records of science students whose percentage is more than 75 form student table. SELECT * FORM student WHERE stream = ‘Science’ AND percentage > 75; 
select* from Student
where Stream = 'Science' and Percentage >75;

  
