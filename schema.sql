DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(50) NULL,
    department_name VARCHAR (50) NULL,
    price DECIMAL (10,2) NULL,
    stock_quantity INT NULL,
    product_sales DECIMAL (10,2) NULL,
    PRIMARY KEY (item_id)
);

CREATE TABLE departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name VARCHAR (50) NULL,
    over_head_cost DECIMAL (10,2) NULL,
    PRIMARY KEY(department_id)
);

INSERT INTO departments (department_name, over_head_cost),
VALUES ("Electronics", 900),
("Clothing", 800),
("Homegoods",700),
("Beauty & Health",600)


