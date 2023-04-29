             /*!!!!! Welcome to EmployeePayrollProblem !!!!*/
create table employee_payroll  /* create table */
(
 Id int primary key identity,
 Name varchar(40) NOT NULL,
 Salary int,
 StartDate Date NOT NULL
)

select * from employee_payroll

/* insert values */
insert into employee_payroll values('Ram', 50000, '2003-04-2'),
                                   ('Shyam', 20000, '2013-03-1'),
								   ('Bhole', 70000, '2020-09-21'),
								   ('Durga', 50000, '2023-01-11')

select * from employee_payroll  /* retrive data */

select Salary from employee_payroll where id = 3   /* salary of particular employee */

select * from employee_payroll where StartDate BETWEEN CAST('2013-03-01' AS DATE) AND GETDATE() /* employee deatil b/w date range */

