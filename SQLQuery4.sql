/* alter table

ddl  alter table : modifyes a table definaton by adding, alterning or dropping column and constraints.

it also reassigns and rebuilds partions , or disables and enables constraints and triggers.
*/

-- alter table statement

--adding  column without constraint that allow null values.

use employeeDB;

create table emp_details(id int , name varchar(20));   

select * from emp_details;

alter table emp_details add salary decimal;

insert into emp_details values(1,'alka',49000);

alter table emp_details add phone varchar(10) null;

-- adding column with constraint
-- adds a new column with constraint(unique, default, etc)
  -- alter table  emp_details add project_completed int not null default 5;

  alter table emp_details add projectid integer null
  constraint pID_unique_key unique;

  insert into emp_details values(2,'steve',50000,'2389490218',default, 4);

  select * from emp_details;
  /* adding several columns with constraints 
  add more than one column with  constraints defined with the new column.
  */

  
  use employeeDB;
  create table company_info(id int)
  alter table  company_info
  add revenue decimal(10,2) null,
  projectId integer constraint projId_pk primary key;


  select * from company_info;


  /* dropping a column or columns  
         remove a column or multiple columns.
		 */

select *into emp_info_BCKP from employeeDB.dbo.employee_info;

select * into emp_details_BCKP from employeeDB.dbo. emp_details;

select * into company_info_BCKP from employeeDB.dbo.company_info;