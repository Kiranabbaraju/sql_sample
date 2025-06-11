27)
select Concat(first_name, ' ', last_name) As full_name
From table_name;
/* As concat joins two strings together we use it to combine it and creating an alias for output column
as full_name. Specifying table_name as data is retrieved from there. */

26)
select upper(emp_name) As  capital_name
from employees;
/* upper is a funtion which converts all characters to uppercase, we are assgining an alias as capitalname
to it and the data being retrived from employees table.*/

11)
select employee_name, dept_name, dept_id
from employees
Inner join departments
on 
employees.dept_id = departments.dept_id;
/* Here I went as per the syntax, as we know the common column is dept_id using it to get wanted result
from employees table, then we are applying inner join which gets result for common values in both tables.
syntax: Select column_name1, column_name2
        from table1
        join table2
        on table1.column_name = table2.column_name */
12)
select emp_name, dept_name, dept_id
from employees
Left join departments
on
employees.dept_id = departments.dept_id;
/* I used left join syntax, this is retrieving columns from employee table.Then we are applying left join
from departments on the common column. 
As this is left join all values of emp_name will be retrieved irrespective of assigning a department. */

14)
select job_title, salary, emp_name, job_id
from jobs
Right join employees
on jobs.job_id = employees.job_id;

/*
referencing the syntax: select column_name1, column_name2
        from table1
        right join table2
        on table1.column_name = table2.column_name;
Here Im using job_id as common column and selecting the above mentioned columns to retrieve data from
table jobs, then applying right join from employees table on jobs_id. As this is right join it returns
all the columns in employees and the common columns. */

28)
select first_name, length(first_name) as total_length
from employees;
/* Select the column first_name and for its total length we use length() function, here we are creating 
alias for it for output column name. This data is retrieved from employees table */

30)
select GETDATE();
/* this gives us date and time of the current system. As this is in sql server I used getdate(), 
in mySql it is select now(); or current_timestamp can also be used. */

29)
Select hire_date,
 MONTH(hire_date) As hire_month
from employees;
/* Here as we know select is extracting what data we want i.e hire_date and Month(hire_date)
is asking it to return the month in hiring date of employee, Again using alias for it as hire_month
this is the table it uses to get the information */
35)
select salary
from employees
where salary between 50000 and 80000;
/* by selecting salary column from employees table we are applying a condition where it should be
between 50000 and 80000. where is conditional operator and between is inclusive of gven values. */

36)
create table projects (project_id int primary key,
project_name varchar(55), project_start_date date);
/* using basic syntax of creating table
create table table_name(columnname1 datatype, columnname2 datatype.... ); */
37)
Alter table projects
Alter column project_start_date DATE NOT NULL;
/*
alter table table_name. This command allows us to make changes to projects table and
by specifying column name we are indicating that we want to modify this start_date column as NOT NULL
i.e it should contain a value. */
38)
Insert into Projects (project_id, project_name, project_start_date)
VALUES (1, 'sql_training', '2025-06-11');
/*
here record is a collection of fields which contain data. It is stored as a row in a table */

39)
delete from projects 
where project_id = 3;
/* I went according to the syntax DELETE FROM TABLENAME WHERE condition.
delete from projects indicates that removal of rows and the where condition is helping to filter
which rows to delete  */
40)
Alter table Projects
Add Column project_status VARCHAR(50) DEFAULT 'active';
/* We are altering projects table which is already created to add new column status and we are defining
the datatype for it and assigning with default active status.
syntax: Alter table tablename
        Add column new_columnname;
if we want to delete a column
       Alter table tablename
       Drop column columnname; */

