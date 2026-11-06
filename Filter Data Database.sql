create database filterdata;
use filterdata;

create table employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(101, 'Arun', 'IT', 45000),
(102, 'Priya', 'HR', 38000),
(103, 'Karthik', 'IT', 55000),
(104, 'Divya', 'Finance', 60000);

select * from employees;

select name, salary from employees
where salary > 50000;