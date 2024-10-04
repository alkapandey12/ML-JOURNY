use employeeDB;

select * from employee_info

alter table emp_details drop constraint  pID_unique_key ;

select * from company_info;

alter table  company_info drop constraint projId_pk,
column revenue, projectId;

/* alter statement altering column defination

changing the data type of a column
           changes a column of a table from one data type to another
		   */

create table customer(accno int, cust_name char(100));

alter table customer alter column cust_name varchar(100);

/* changing the size of a column

  change (increase or decrease) the size of a column.
  */

  alter table customer alter column cust_name varchar(50);

  insert into customer values(123456,'alka pandey');

  alter table customer alter column cust_name varchar(11);

  /*  changing the data type and size of a column
  change the data type as well as the size of a column at same time.
  */
    alter table customer alter column cust_name char(50);

	-- Aliases 

	-- can be used to create a temporary name for columns or tables
	-- types
	--1. column aliases: are used to make column headings in query output easier to read(specially with function and column concatenation)

	--2. table aliases : are used to shorten your sql to make it easier to read(specially in join, and subquery)

	create  database company_DB 

	create table employee(emp_id int , emp_name varchar(20),emp_salary   decimal(10,2),emp_deptID int);
	insert  into employee values (1111,'steve',350000,01)
	select * from employee;
	insert into employee values (1112,'acam' ,290000,02),
	(1113,'john',500000,03),
	(1114,'mike',450000,04),
	(1115,'peter',600000,05);


	select emp_salary as 'employee_salary' from employee;
/*






