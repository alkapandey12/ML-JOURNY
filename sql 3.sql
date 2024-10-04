use employeeDB;

--Date & Time functions
--1. GETDSTE(),getDate()
--2. datename(),
--3.datediff()
--4. dateadd()
select GETDATE() as today_date;

select SYSDATETIME() as tody_date;

select CURRENT_TIMESTAMP as tody_date;

select DATENAME(MONTH,CURRENT_TIMESTAMP) as Month;


select DATENAME(YEAR,CURRENT_TIMESTAMP) as year;

select DATENAME(HOUR,CURRENT_TIMESTAMP) as Hour;

select DATEDIFF( year,'september 4 2000',CURRENT_TIMESTAMP) as 'age';



/* group by clause:
defines one  or more columns as a group such that all rows within any group have the same values for  those columns.
always  used with select statement
*/

select * from employee_info ;
select deptid from employee_info group by deptid;

select sum(empsalary) from employee_info group by deptid;

select deptid, sum(empsalary) as 'total salary' from employee_info group by deptid;



/* Having clause 
The having clause defines the condition that is then applied to groups of rows.
always used with select sttement inside group by clause.*/

select deptid, sum(empsalary) as 'total salary' from employee_info group by deptid having deptid=20;


/* TOP () clause
the top clause specifies the first n rows of the query result that are to be retrived.
this clause should always  be used with the order by clause
*/
select top(3) empsalary from employee_info order by empsalary desc;

/* create a copy of the table from different database
to create a copy of the table from different database
*/
select * from employee_info;

create database sample_emp_db;

use sample_emp_db;

select * into emp_details from employeeDB.dbo.employee_info;


select * from emp_details





