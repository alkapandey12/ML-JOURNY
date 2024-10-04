create employeeDB

use employeeDB;
create table employee_info(
empid integer primary key,
empname varchar(50) not null,
empsalary decimal(10,2) not null,
job varchar(50),
phone varchar(50),
deptid integer);

insert into employee_info values
(01,'alka',250000,'data analayst','9328902334',10);

insert into employee_info(empid,empname,empsalary)
values(02,'manisha',3000000)


select * from employee_info;
select empname,empsalary from employee_info;

update employee_info
set empsalary=empsalary + 1000;

select * from employee_info;

update employee_info
set job= 'tester'
where empname='manisha';

select * from employee_info

update employee_info
set phone='690682490', deptid=20
where empid=2;