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
("Beauty & Health",600);

INSERT INTO products(product_name, department_name, price,stock_quantity, product_sales)
VALUES("Xbox one", "Electronics", 450.00, 300, 400),
("Ipad", "Electronics", 700.00, 500, 300),
("Kindle", "Electronics",200.00,300,200),
("PS4","Electronics",650.00,500,500);

INSERT INTO products(product_name, department_name, price,stock_quantity, product_sales)
VALUES("Nike Air Zooms","Clothing",150.00,300,300),
("Adidas Predators","Clothing",250.00,200,300),
("Reebok Classics","Clothing",100.00,300,600),
("Mizuno Track","Clothing",275.00,200,400);

INSERT INTO products(product_name, department_name, price,stock_quantity, product_sales)
VALUES("couch","Homegoods",400.00,200,200),
("futon","Homegoods",175.00,150,300),
("recliner","Homegoods",350.00,100,240),
("otoman","Homegoods",125.00,50,100);

INSERT INTO products(product_name, department_name, price,stock_quantity, product_sales)
VALUES("toothpaste","Beauty & Health",10.75,400,200),
("makeup","Beauty & Health",75.00,50,300),
("contacts","Beauty & Health",125.00,340,280),
("shampoo","Beauty & Health",30.00,530,700);




