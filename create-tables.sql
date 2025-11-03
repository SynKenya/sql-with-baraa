
-- CREATE A SCHEMA

drop schema if exists mydatabase cascade;
create schema mydatabase;


-- Table: customers

drop table if exists mydatabase.customers;

create table mydatabase.customers (
id INT not null,
first_name VARCHAR(50) not null,
country VARCHAR(50),
score INT,
constraint pk_customers primary key (id)
);


-- Table: orders

drop table if exists mydatabase.orders;

create table mydatabase.orders (
order_id INT not null,
customer_id INT not null,
order_date DATE,
sales INT,
constraint pk_orders primary key (order_id)
);




-- Dropping any existing schema and creating a new schema.
-- CASCADE is used to automatically delete everything that depends on this schema like tables, views and foreign keys

drop schema if exists sales cascade;
create schema sales;

-- Creating Table: Customers

create table sales.customers (
customerid INT primary key,
firstname VARCHAR(50),
lastname VARCHAR(50),
country VARCHAR(50),
score INT
);


-- Table: Employees

create table sales.employees (
employeeid INT primary key,
firstname VARCHAR(50),
lastname VARCHAR(50),
department VARCHAR(50),
birthdate DATE,
gender CHAR(1),
salary INT,
managerid INT
);


-- Table: Products

create table sales.products (
productid INT primary key,
product VARCHAR(50),
category VARCHAR(50),
price INT
);



-- Table: Orders

create table sales.orders (
orderid INT primary key,
productid INT,
customerid INT,
salespersonid INT,
orderdate DATE,
shipdate DATE,
orderstatus VARCHAR(50),
shipaddress VARCHAR(255),
billaddress VARCHAR(255),
quantity INT,
sales INT,
creationtime TIMESTAMP
);




-- Table: Orders_Archive

create table sales.ordersarchive (
orderid INT,
productid INT,
customerid INT,
salespersonid INT,
orderdate DATE,
shipdate DATE,
orderstatus VARCHAR(50),
shipaddress VARCHAR(255),
billaddress VARCHAR(255),
quantity INT,
sales INT,
creationtime TIMESTAMP
);


