create database rd
use rd

select * from Chicago_e

-- find different job titles:

select distinct job_titles from Chicago_e

-- find different department:

select distinct department from Chicago_e

-- find max salary:

select max(annual_salary) highest_salary from Chicago_e

-- find employee name, department, job titles and max salary:

select top 1 name,department, job_titles, annual_salary from Chicago_e
order by Annual_Salary desc

-- count total departments present:

select COUNT(department) from Chicago_e

select COUNT(distinct department) from Chicago_e

-- count total job titles present:

select count(job_titles) total_jobs from Chicago_e

select count(distinct job_titles) total_jobs from Chicago_e

-- find employee name who do full time job:

select * from Chicago_e

select name, full_or_part_time from Chicago_e
where Full_or_Part_Time = 'F'

-- find employee name who do part time job:

select name, full_or_part_time from Chicago_e
where Full_or_Part_Time = 'P'

-- count total number of employees in full and part time job:

select count(name) total_employee_F from Chicago_e
where Full_or_Part_Time = 'F'

select count(name) total_employee_P from Chicago_e
where Full_or_Part_Time = 'P'

-- find department which gives full and part time jobs:

select distinct department from Chicago_e
where Full_or_Part_Time = 'F'

select distinct department from Chicago_e
where Full_or_Part_Time = 'P'

-- count total number of department in full and part time job:

select count(distinct Department) total_department_F from Chicago_e
where Full_or_Part_Time = 'F'

select count(distinct Department) total_department_P from Chicago_e
where Full_or_Part_Time = 'P'

Select * from Chicago_e

-- find employees who work in police department :

select name, Department from Chicago_e
where Department = 'DEPARTMENT OF POLICE'

-- find highest salary per department:

select department, max(annual_salary) highest_salary from Chicago_e
group by Department

-- find sum of total salary as per department:

select department, round(sum(annual_salary), 0) total_salary from Chicago_e
group by Department

-- find total salary given by full and part jobs:

select full_or_part_time, round(sum(annual_salary),0) total_salary from Chicago_e
group by Full_or_Part_Time

-- find name, department, job titles where annual salary is empty:

select name, job_titles, department from Chicago_e
where Annual_Salary is null

-- find name, job titles, department, hours work and rate of hourly work:

select name, job_titles, department, typical_hours, hourly_rate from Chicago_e
where typical_hours is not null and hourly_rate is not null

-- find total hourly work:

select sum(typical_hours) total_hours from Chicago_e

select*from Chicago_e

-- check which department gives hourly salary:

select department, salary_or_hourly, round(hourly_rate, 0) from Chicago_e
where Salary_or_Hourly = 'Hourly' and Hourly_Rate is not null

-- find total salary as per hourly & annual salary:

select salary_or_hourly, sum(hourly_Rate) total_hourly_salary , sum(annual_salary) total_annual_salary 
from Chicago_e
group by Salary_or_Hourly

-- find top 10 employees which have highest salary:

select top 10 name, annual_salary from Chicago_e
order by Annual_Salary desc

-- find top 10 employees which have lowest salary:

select top 10 name, annual_salary from Chicago_e
where Annual_Salary is not null
order by Annual_Salary asc

-- find employees which are work on 'sergeant' and 'police officer':

select name, job_titles from Chicago_e
where Job_Titles = 'SERGEANT' or Job_Titles = 'POLICE OFFICER' 

-- find total employees which are work on 'sergeant' and 'police officer':

select count(name) total_employee, job_titles from Chicago_e
where Job_Titles = 'SERGEANT' or Job_Titles = 'POLICE OFFICER'
group by Job_Titles

-- find employees which have salary more than avg salary:

select name, annual_salary from Chicago_e
where Annual_Salary > (select avg(Annual_Salary) avg_salary from Chicago_e)

select * from Chicago_e

-- find employees which have salary more than avg hourly salary:

select name, round(hourly_rate, 0) hourly_rate from Chicago_e
where Hourly_Rate > (select avg(Hourly_Rate) avg_hourly from Chicago_e)

-- find the total salary of hourly employees with department:

select name, department, round((typical_hours * hourly_rate), 0) total_salary from chicago_e
where Salary_or_Hourly = 'HOURLY'

-- find total hourly salary per department:

select department, round(sum(typical_hours*hourly_rate), 0) total_hourly_salary from Chicago_e
where Typical_Hours is not null or Hourly_Rate is not null 
group by Department
order by total_hourly_salary desc

-- top 10 departments which gives highest hourly salary:

select top 10 department, round(sum(hourly_rate), 0) Highest_hourly_salary from Chicago_e
group by Department
order by Highest_hourly_salary desc

select*from Chicago_e

-- find name which starts from 'a':

select name from Chicago_e
where Name like 'a%'

-- find name which ends with 'e':

select name from Chicago_e
where name like '%e'

-- find the employees and number of which are work in 'sergeant', 'police officer', 'attorney':

select name, job_titles from Chicago_e
where Job_Titles in ('SERGEANT', 'POLICE OFFICER', 'ATTORNEY')
GROUP BY Job_Titles, Name

select count(name) total_number_employees, job_titles from Chicago_e
where Job_Titles in ('SERGEANT', 'POLICE OFFICER', 'ATTORNEY')
GROUP BY Job_Titles
order by total_number_employees desc

-- find the employees and their job titles, department which are work in between 20 to 40 hours:

select name, job_titles, department from Chicago_e
where Typical_Hours between '20' and '40'

-- find the total number of employees and their job titles and department which are work in between 20 to 40 hours:

select count(name) total_number, job_titles, typical_hours from Chicago_e
where Typical_Hours between '20' and '40'
group by Job_Titles, Typical_Hours
order by total_number desc

select count(name) total_number, Department, typical_hours from Chicago_e
where Typical_Hours between '20' and '40'
group by Department, Typical_Hours
order by total_number desc

-- find the number of job titles and department where the employees are more than 500:

select count(name) number_employees, job_titles from Chicago_e
group by Job_Titles
having count(Name) > 500
order by number_employees desc

select count(name) number_employees, Department from Chicago_e
group by Department
having count(Name) > 500
order by number_employees desc

select * from Chicago_e



