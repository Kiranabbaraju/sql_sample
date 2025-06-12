41)
step 1: 
Begin transaction;

step 2: update employee salary
Update employees
Set salary = 40000
Where employee_id = 101;

step 3:
ROLLBACK;
/*
I looked it up, apparently what I understood is to begin starts the tansaction process, from here on 
all DML statements are part of it and can be undone.
in step2 its modifying employees table and set specifies the change to make and where condition
is stating on whom make the change. 
As it is not committed it doesn't show the change in other database sessions. I think it is similar
to what Im doing to push this .sql file to github, before push we use COMMIT to save the changes.
Then Rollback command makes it to revert back to its state before the begin of transaction 
*/

42)
Step 1: Start the transaction
begin transaction;

Step 2: Update the department location
Update Departments
Set location = 'Chicago'
Where department_name = 'Sales';

step 3:
COMMIT;

/* very similar to the above one, here we are using COMMIT to save the changes we made.
After this Sales department location will be permanently updated to Chicago in departments table.
*/

44)
Create view high_salary_employees as
Select
    employee_id,
    first_name,
    last_name,
    salary
from employees
where salary > 70000;

/* Went by the syntax of creating view. 
Create view view_name AS
Select column1, column2, ...
From table_name
WHERE condition;
It is selecting columns from employees tables and applying where condition as salary more than 70000
so that it returns only emp with salary > 70000.
After view is created we can query it as a regular table..
Select * from high_salary_employees
*/

45)
Drop view high_salary_employees;
/* removing the view from database */
46)
Create index idx_employees_last_name
On employees (last_name);
/* created based on syntax.
CREATE INDEX index_name
ON table_name (column1_name, column2_name,..);

CREATE INDEX command is for creating an index, index name is a unique name for index
On employess is declaring on this table the index should be created and last_name is  the column_name
on which index will be built.
*/

47)
Drop index idx_employees_last_name;
/* drop index index_name is the syntax used */

48)
SELECT
    employee_name,
    department,
    salary,
    Row_number() OVER (partition by department order by salary desc) as salary_row
from employees;
/*
Here we are selecting columns emp_name, dept_name, salary as we need these to assgin row number based
on slary of each departments. 
Then we are applying Row_number function to assign the number to each row.
over here defines how row_numbers are assigned.
Then it is taking different depts and ordering the salaries by high to low and we are giving alias
to this whole logic as salary_row.
This all data is being retreived from employees table.
*/

49)
select employee_name ,salary,department_name,
RANK() OVER(partition by department_name Order by salary desc) as top_earners
from employees;
/*
We selected emp_name, salary, dept_name columns as we want to know top3 earners per department.
rank() function assigns the rank to each row,over defines how ranking is applied,
partition by dept and ordering it the salary from high to low and we are assigning an alias as top_earners.
This is being retrieved from table employees. */

50)
select emp_name, department_name, salary,
DENSE_RANK() OVER (partition by department_name order by salary desc) as emp_rank 
from employees;
/* Here we selecting columns based on same salary employees as they can be across all depts we need to 
take dept information as well. 
Then we are using Dense_rank() function calculates rank of each row. over clause defines how ranking
is applied. Partition by column_name groups rows and ranking is started there and it is odered by
high to low. This assigned alias as emp_rank and this all data is retrieved from employees data
*/

16)
select
    job_id,
    SUM(salary) as total_salary
from
    Employees
Group by
    job_id

/*
Here column job_id is selected to categorize results and SUM(salary) calculates sum of salary values
and assigning it an alias as total_salary, this all data is retrieved from employess table,
Group by clause groups all rows that have same job_id together and Sum(salary) operates on these groups.

