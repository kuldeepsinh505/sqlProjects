show databases;
create database jobs;
use jobs;

show tables;
create table job(employee_no int(20), first_name varchar(20), last_name varchar(20), job_id int(20), 
job_title char(20), dept_no int(10), dept_name char(10), hire_date int(20), annual_salary int(7),
commision_percent int(5));

select *from job;
drop table job;
select*from sql_practice_assignment;
select * from job;
select * from JOB;
DROP TABLE jobs.job;

select job_id from job;


#1 List the last name, first name and employee number of all programmers who were hired on 
#or before 21 May 1991 sorted in ascending order of last name.
select first_name, last_name, employee_no from job where hire_date <=
'1991-5-21' order by last_name;

#2List the department number, last name and salary of all employees who were hired between 
#16/09/87 and 12/05/96 sorted in ascending order of last name within department number.
select * from job;
select department_no, last_name, annual_salary from job where hire_date between 
'1987-09-16' and '1996-05-12' order by department_no , last_name asc;

#3 List all the data for each job where the average salary is greater than 15000 sorted in
#descending order of the average salary
select *from job where annual_salary > 15000 order by annual_salary desc;

#4 List the last name, first name, job id and commission of employees who earn commission 
#sorted in ascending order of first name. (Commision=Annual_Salary* Commission_Percent
select last_name, first_name, job_id, annual_salary*commission_percent as commission from job
having commission > 0 order by first_name;

#5 which job title are found in the IT and sales departments?
select job_title , department_name from job where department_name in ('IT','sales');

#6 List the last name of all employees in department no 10 and 40 together with their monthly 
#salaries (rounded to 2 decimal places), sorted in ascending order of last name
select last_name , round(annual_salary/12,2) as monthly_salary from job 
where Department_No in (10,40) order by Last_Name asc;

#7Show the Annual Salary salaries displayed with no decimal places.
select round(annual_salary) as salary from job; 

#8 show the total number of employees
select count(distinct employee_no) as total_employee from job;

#9 List the department number, department name and the number of employees for each
#department that has more than 2 employees grouping by department number 
#and department name.
select department_no, department_name , count(distinct employee_no) as employee from job 
group by department_no, department_name having employee > 2;

#10 List the department number, department name and the number of employees for the
#department that has the highest number of employees using appropriate grouping
select department_no, department_name, count(distinct employee_no) as employee from job 
group by department_name having employee = (select count(*) from job group by Department_No 
order by count(*) desc limit 1); 

#11 List the department number and name for all departments where no programmers work
select distinct department_no,department_name from job where 
job_title != 'programmer';

#12 Update all the Annual salaries for jobs with an increase of 1000.
create table job_copy select * from job;
update job_copy set annual_salary = annual_salary + 1000;
select *from job;

#13 List all the data for jobs sorted in ascending order of job id.
select *from  job order by job_id;

#14 The job history for employee number 102 is no longer required. Delete this record. 
delete from job_copy where employee_no = '102';
select *from job_copy;

#15 Prepare a table with percentage raises, employee numbers and old and new salaries. 
#Employees in departments 20 and 10 are given a 5% rise, employees in departments 50, 90 
#and 30 are given a 10% rise and employees in other departments are not given a rise.
create view personal_table as select employee_no,
if(department_no in (20,10),5, if(department_no in (50,90,30),10,0)) percentage_raise,
annual_salary old_annual_salary, round(annual_salary*(1+(if(department_no in
(20,10),5,if(department_no in (50,90,30),10,0))*0.01)),2) new_annual_salary from job;

select *from personal_table;

#16 Create a new view for manager’s details only using all the fields from the employee
#table.
create view manager_table as select* from job where job_title like 'manager%';
select *from manager_table;

show tables;


#17 Show all the fields and all the managers using the view for managers sorted in ascending 
#order of employee number.
select *from manager_table order by employee_no asc;



