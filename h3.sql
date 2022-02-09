CREATE DATABASE Company;
USE Company;
CREATE TABLE customers(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
    PRIMARY KEY (id)
);
CREATE TABLE orders(
  id int NOT NULL UNIQUE AUTO_INCREMENT,
  product varchar(20),
  cost int,
  customerId int,
  PRIMARY KEY (id),
  FOREIGN KEY (customerId) REFERENCES customers(id)
);

SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO customers (firstname, lastname, company) Values('Kris', 'Johnson', 'RWU');
INSERT INTO customers (firstname, lastname, company) Values('John', 'Smith', 'RWU');
INSERT INTO orders (product, cost, customerId) VALUES ('Laptop', '$2000', '8419');
INSERT INTO orders (product, cost, customerId) VALUES ('Toaster', '$300', '0012');
INSERT INTO orders (product, cost, customerId) VALUES ('Phone', '$1000', '2756');
INSERT INTO orders (product, cost, customerId) VALUES ('Radio', '$50', '7398');

SELECT * from orders;
SELECT * from customers;