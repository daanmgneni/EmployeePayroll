
11 lines (9 loc) · 225 Bytes
             /*!!!!! Welcome to EmployeePayrollProblem !!!!*/
create table employee_payroll
(
 Id int primary key identity,
 Name varchar(40) NOT NULL,
 Salary int,
 StartDate Date NOT NULL
)

select * from employee_payroll

