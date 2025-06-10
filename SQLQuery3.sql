6)
select department_name COUNT(employees_name) As total_employees
from  employees /* Im considering table name as employees as we have details of employees */ 
group by department_name;

/* here as we need to count total employees in each dept we are selecting department_name column,
as this column contains all depts and count fcuntion counts all employees present in it.
We assigned it an alias as total_employees so output will be as this. As we here are using
Group by it makes sure that this process happens for every department present in the table. 
if it was only one dept which was need to be counted we wouldn't have used group by. */

7) 
select department_name AVG(avgSalary) As average salary
from employees
Group by department_name;

/* this is similar to above one only difference is we here are calculating avg salary in each department
again giving it an alias of avg salary for output name and grouping to continue it on each department */

8)
Select employee_name, hire_date, blood_group from employees
order by hire_date desc;
/* we are selecting columns in employees table and ordering it by desc as per requirement
which means from the latest joiner to older employee. If we doesnt specify desc it automatically assumes
it as asc. */

9)
select employee_name, no_of_sales, commission_pct 
From salesEmployees
where commission_pct IS NULL;

/* I selected the columns based on the requirement as we make commission on sales and retrieving data 
from table name mentioned. Now as we want employees with null commission we used Where condition to
extract required data.
I previously praticed few queries on https://www.sql-practice.com/ similar type has come across. */

10)
Select department_name, COUNT(employee_name) As total_departments
From employees
Group by department_name
Having COUNT(employee_name) > 5;
/* similar to calculating total employees count in each department instead here the condition to 
calculate was if employees are > 5. Having is used here because it is a aggreagate function
as WHERE cannot be used with aggregate functions. here having if calculating the employees are >5 or not.


