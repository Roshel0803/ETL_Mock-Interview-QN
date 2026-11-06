create database groupby;
use groupby;

create table sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    amount DECIMAL(10,2)
);

INSERT INTO sales VALUES
(1, 'Laptop', 'Electronics', 2, 100000),
(2, 'Mobile', 'Electronics', 3, 60000),
(3, 'Shirt', 'Clothing', 5, 5000),
(4, 'Jeans', 'Clothing', 2, 4000),
(5, 'Sofa', 'Furniture', 1, 25000),
(6, 'Table', 'Furniture', 2, 15000);

select * from sales;

select category, SUM(amount) as total_sales from sales
group by category;