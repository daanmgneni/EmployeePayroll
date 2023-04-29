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

alter table employee_payroll
add Gender char(1)
update employee_payroll set Gender= 'M' where name ='Ram' or name = 'Shyam' or name = 'Bhole'
update employee_payroll set Gender= 'F' where name ='Durga'

select SUM(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select AVG(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select MIN(Salary) from employee_payroll
where Gender = 'M' group by Gender;

select MAX(Salary) from employee_payroll

where Gender = 'M' group by Gender;

select COUNT(*) from employee_payroll
where Gender = 'M' group by Gender;

select COUNT(*) from employee_payroll
where Gender = 'F' group by Gender;

select * from employee_payroll

/* #######################   SECTION 2  #################################### */

ALTER TABLE employee_payroll  /* adding new column to employee_payroll */
ADD Phone_Number VARCHAR(40),
    address VARCHAR(50) DEFAULT 'NOT KNOWN' NULL,
    department VARCHAR(50) DEFAULT 'NOT KNOWN' NOT NULL;

EXEC SP_RENAME 'employee_payroll.Salary', 'Basic_Pay', 'COLUMN'/*  alter name of column salary to basic_pay*/

ALTER TABLE employee_payroll  /* adding new column to employee_payroll */
ADD Deductions float,
    Taxable_Pay float,
    Income_Tax float,
    Net_Pay float

UPDATE employee_payroll
SET Phone_Number = 98765443, 
    department = 'Sales',
	address='sector-2', 
	Deductions = 1000,
	 Taxable_Pay = 5.4,
	 Income_Tax = 7,
	 Net_Pay = 36000
	  WHERE id = 1
UPDATE employee_payroll
SET Phone_Number = 987987665, 
    department = 'Marketing',
	address='sector-7', 
	Deductions = 500,
	 Taxable_Pay = 5.4,
	 Income_Tax = 7,
	 Net_Pay = 40000
	  WHERE id = 2
UPDATE employee_payroll
SET Phone_Number = 2345443, 
    department = 'HR',
	address='sector-5', 
	Deductions = 1000,
	 Taxable_Pay = 5.4,
	 Income_Tax = 7,
	 Net_Pay =50000
	  WHERE id = 3
UPDATE employee_payroll
SET Phone_Number = 98864432, 
    department = 'Sales',
	address='sector-7', 
	Deductions = 1500,
	 Taxable_Pay = 5.4,
	 Income_Tax = 7,
	 Net_Pay = 36000
	  WHERE id = 4

Insert into employee_payroll (Name,department, StartDate) /* INSERT NEW VALUE FOR UC 10 */
values('Durga','Marketing','2023-01-11')  /* create redundency */

select * from employee_payroll where name = 'Durga' /* create redundency same person but differnet id shows */
