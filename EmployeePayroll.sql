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
insert into employee_payroll values('Ram', 50000, '2023-04-21'),
                                   ('Shyam', 20000, '2023-04-21'),
								   ('Bhole', 70000, '2023-04-21'),
								   ('Durga', 50000, '2023-04-21')

select * from employee_payroll  /* retrive data */
