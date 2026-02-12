-- Module 4) DA - SQL - Introduction and Getting started with sql
-- Assessment 1: 

create database workers;

use workers;

create table worker(
   WORKER_ID int primary key,
   FIRST_NAME varchar(100),
   LAST_NAME varchar(100),
   SALARY int,
   JOINING_DATE datetime,
   DEPARTMENT varchar(100)
   );
   
insert into worker ( WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) values
 (1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
 (2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00','Admin'),
 (3,'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
 (4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
 (5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
 (6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
 (7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
 (8, 'Geetika', 'chauhan', 90000, '2014-04-11 09:00:00', 'Admin');
 
 -- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 
  select* from worker
  order by FIRST_NAME ASC, DEPARTMENT desc;
 
 -- 2.Write an SQL query to print details for Workers with the first names "Vipul" and "Satish" from the Worker table.
 select* from worker
 where FIRST_NAME IN ('Vipul', 'Satish');

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT* FROM WORKER
WHERE FIRST_NAME LIKE '______h'; 

-- 4 Write an SQL query to print details of the Workers whose SALARY lies between 1. 
 SELECT* FROM worker
 WHERE SALARY between 100000 AND 500000;
 
--  5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
SELECT SALARY, COUNT(*) FROM WORKER
group by SALARY
having count(*);

-- 6. Write an SQL query to show the top 6 records of a table. 
SELECT* FROM WORKER LIMIT 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them. 
 SELECT DEPARTMENT, COUNT(*) AS TOTAL_EMPLOYEES
 FROM WORKER
 group by DEPARTMENT
 having COUNT(*)<5;
 
 -- 8. Write an SQL query to show all departments along with the number of people in there
 SELECT DEPARTMENT, COUNT(*) AS TOTAL_EMPLOYEES
 FROM WORKER
 group by DEPARTMENT;
 
 -- 9. Write an SQL query to print the name of employees having the highest salary in each department.
 SELECT* FROM WORKER w
 WHERE SALARY = (SELECT MAX(SALARY)
 FROM WORKER
 WHERE DEPARTMENT = W.DEPARTMENT);