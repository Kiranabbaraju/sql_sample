Select first_name, salary from employees
Where salary > 5000;

/* we are selecting the columns which we need from the employees table and as we want to filter 
those first name and salary columns based on whose salary is more than 5000
we are using where condition, this will give us the first_names and exact salaries of employees 
where their salary is > 5000 */

3)
Select * from departments
where department_name = 'Sales';

/* As * gives us all columns from departments and as we need only sales department 
records we are filtering it with Where condition using the department name which was given as Sales.
As there can be many departments like HR, Users, Clients, sales etc under department_name 
if we use this query it will only return the all the records in Sales row */

4)
select names from employees
where names LIKE 'A%';

/* To get names of employees which starts with A in this names column we are using like operator. 
It generally helps us
to search for specific words or letter. If we provide '%A%' instead of 'A%' it will return the names
of employees who have A in their whole name not exactly the first letter */

5)
Select distinct job_titles from jobs;
/* To get different job titles for each record we use distinct keyword in select statement. It only keep
the same title once if its repeating it removes it so that every job title is different.
If we need different values for two columns we can use...
Select distinct column1_name, column2_name From table_Name; */
