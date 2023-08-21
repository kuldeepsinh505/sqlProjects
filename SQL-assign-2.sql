show databases;
create database office;
use office;
show tables;

#table1 
create table department(
Code int not null primary key auto_increment,
Name character(30),
Budget int(10)
);



insert into department(Code,Name,Budget)
values(14,"IT",6500),
(37,"Accounting",15000),
(59,"Human Resources",240000),
(77,"Research",55000);


select * from department;

#table2
create table employee(
ID int not null primary key auto_increment,
Name character(15),
Last_Name character(15),
Department int(3));

insert into employee(ID,Name,Last_Name,Department)
values(123234877,"Michael","Rogers",14),
(152934485,"Anand","Manikutty",14),
(222364883,"Carol","Smith",37),
(326587417,"Joe","Stevens",37),
(332154719,"Mary-Anne","Foster",14),
(332569843,"George","ODonnell",77),
(546523478,"John","Doe",59),
(631231482,"Devid","Smith",77),
(654873219,"Zacary","Efron",59),
(745685214,"Eric","Goldsmith",59),
(845657245,"Elizabeth","Doe",14),
(845657246,"Kumar","Swamy",14);
select * from Employee;

#1 Select the last name of all employees, without duplicates
select distinct (Last_Name) from employee; 

#2 Select all the data of employees whose last name is "Smith"
select * from employee where Last_Name = "Smith" ;

#3 Select all the data of employees whose last name is "Smith" or "Doe".
select * from employee where Last_Name in ("Smith","Doe");

#4. Select all the data of employees that work in department 14.
select *from employee where department = (14);
select * from employee;

#5. Select all the data of employees that work in department 37 or 
#department 77.
select *from employee where Department in (37,77);


#6. Select all the data of employees whose last name begins with an "S"
select *from employee where Last_Name like "S%";

#7. Select the sum of all the departments' budgets.
select Sum(Budget) from department;

#8. Select the number of employees in each department (you only need to 
#show the department code and the number of employees).
select Department, count(Name) as Total_Name from employee group by Department ;

#9. Select all the data of employees, including each employee's 
#department's data.
select * from employee join department on Department.Code = employee.Department;

select * from employee join department on Department.Code = employee.Department;

#10.Select the name and last name of each employee, along with the name 
#and budget of the employee's department.
select employee.Name as EMP_Name, employee.Last_Name as EMP_LN, department.Name ,
department.Budget as dept_BUG from employee join department on 
department.Code= employee.Department; 

#11.Select the name and last name of employees working for departments 
#with a budget greater than $60,000.   
select 
employee.name as emp_name,
employee.last_name,
department.Name as dep_Name, 
department.Budget from employee
join department on Department.code = employee.department
where department.Budget> 60000;

select employee.Name as Emp_name,Employee.Last_Name,department.Name as Dep_Name,
Department.Budget from employee
join department on Department.Code = employee.Department
where Department.Budget > 60000;

select employee.name as emp_name, employee.last_name as last_name,
department.name as name, department.budget as budget from employee 
join department on department.code = employee.department where 
department.budget > 60000;


#12.Select the departments with a budget larger than the average budget of 
#all the departments
select employee.Department , avg(department.Budget) as Avg_Bug from employee
join department on department.Code= employee.Department group by employee.Department 
order by Avg_bug
desc limit 1;


#13.Select the names of departments with more than two employees.
select department.Name from department where Code in (select Department from employee
group by Department having count(*)>2);

#14 .Very Important - Select the name and last name of employees working 
#for departments with second lowest budget.
select Name , Last_Name from employee 

select employee.Name as EMP_name,
	   employee.Last_Name as LP,
	   min(department.Budget) from employee
	   join department on Department.Code = employee.Department 
	   where department.Budget not in (select min(Budget)from department)
	   order by Budget desc;


#15.Add a new department called "Quality Assurance", with a budget of 
#$40,000 and departmental code 11.
insert into department(Code,Name,Budget)
values(11,"Quality Assurance",40000);
select *from Department;




#16.And Add an employee called "Mary Moore" in that department, with 
#SSN 847-21-9811.
insert into employee (id,name,last_name,department)
values (847219811,"Mary","Moore",11);
select * from Employee;

#17.Reduce the budget of all departments by 10%.
select concat(EMPLOYEE.name," ",employee.Last_Name) as Emp_name,
department.name as dept_name, department.Budget, budget*10/100 as Discount,
budget - budget*10/100 as act_budget from employee join department on 
department.code=employee.department;


#18.Reassign all employees from the Research department (code 77) to the 
#IT department (code 14).
update employee set department=14 where department=77;
select *from employee e;


#19.Delete from the table all employees in the IT department (code 14).
delete from employee where department=11;
select *from employee;


#20.Delete from the table all employees who work in departments with a
#budget greater than or equal to $60,000.
delete from employee where Department in (select code from department where budget >=60000);
select * from employee;


#21.Delete from the table all employees
delete  from employee;
select * from employee;






















