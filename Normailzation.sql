CREATE TABLE employee 
(
  id INT PRIMARY KEY IDENTITY,
  name VARCHAR(40) NOT NULL,
  gender CHAR(1),
  phone_number VARCHAR(40),
  address VARCHAR(50) DEFAULT 'NOT KNOWN',
  start_date DATE NOT NULL
)

CREATE TABLE payroll
(
  id INT PRIMARY KEY IDENTITY,
  employee_id INT NOT NULL,
  basic_pay FLOAT,
  deductions FLOAT,
  taxable_pay FLOAT,
  income_tax FLOAT,
  net_pay FLOAT,
  FOREIGN KEY (employee_id) REFERENCES employee(id)
)

CREATE TABLE department
(
  id INT PRIMARY KEY IDENTITY,
  department_name VARCHAR(50) NOT NULL
)

CREATE TABLE employee_department 
(
  id INT PRIMARY KEY IDENTITY,
  employee_id INT NOT NULL,
  department_id INT NOT NULL,
  FOREIGN KEY (employee_id) REFERENCES employee(id),
  FOREIGN KEY (department_id) REFERENCES department(id)
)

   /* UC3 */ 
/* Insert values into the "employee" table: */
INSERT INTO employee (name, gender, phone_number, address, start_date)
VALUES 
  ('Ram', 'M', '3456789876', 'Sector-2', '2003-04-02'),
  ('Shyam', 'M', '1234567', 'Sector-4', '2013-03-01'),
  ('Bhole', 'M', '98765432', 'Sector-5', '2020-09-21'),
  ('Durga', 'F', '987654321', 'Sector-7', '2023-01-11');

/* Insert values into the "payroll" table: */
INSERT INTO payroll (employee_id, basic_pay, deductions, taxable_pay, income_tax, net_pay)
VALUES 
  (1, 4000.00, 500.00, 3500.00, 300.00, 3200.00),
  (2, 5000.00, 400.00, 3000.00, 200.00, 4300.00),
  (3, 4500.00, 600.00, 3200.00, 100.00, 3800.00)

/* Insert values into the "department" table: */
INSERT INTO department (department_name)
VALUES 
  ('Human Resources'),
  ('Sales'),
  ('Marketing')

/* Insert values into the "employee_department" table: */
INSERT INTO employee_department (employee_id, department_id)
VALUES 
  (1, 1),
  (2, 2),
  (3, 3),
  (1, 2)

  /* UC4 */
  SELECT * FROM employee 
  SELECT * FROM payroll
  SELECT * FROM department
  SELECT * FROM employee_department

  /* UC5 */
  SELECT net_pay 
FROM payroll  JOIN employee 
ON payroll.employee_id = employee.id
WHERE employee.name = 'Ram'

SELECT employee.name, payroll.net_pay, employee.start_date 
FROM payroll JOIN employee
ON payroll.employee_id = employee.id
WHERE employee.start_date BETWEEN CAST('2018-01-01' AS DATE) AND GETDATE()

/* UC 7*/
SELECT gender, 
       SUM(net_pay) as total_salary, 
       AVG(net_pay) as average_salary, 
       MIN(net_pay) as min_salary, 
       MAX(net_pay) as max_salary, 
       COUNT(*) as count 
FROM employee e 
JOIN payroll p ON e.id = p.employee_id 
GROUP BY gender
