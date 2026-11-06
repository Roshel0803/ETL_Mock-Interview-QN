create database etl_validation;
use etl_validation;

create table source_customers (
    customer_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

create table target_customers (
    customer_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO source_customers VALUES
(101, 'Arun', 'Chennai'),
(102, 'Priya', 'Madurai'),
(103, 'Karthik', 'Salem'),
(104, 'Divya', 'Coimbatore'),
(105, 'Kumar', 'Trichy');

INSERT INTO target_customers

select * from source_customers;

INSERT INTO target_customers VALUES
(NULL, 'Ravi', 'Chennai');

select * from target_customers;

select COUNT(*) as source_count from source_customers;
select COUNT(*) as target_count from target_customers;

select * from target_customers
WHERE customer_id IS NULL;
