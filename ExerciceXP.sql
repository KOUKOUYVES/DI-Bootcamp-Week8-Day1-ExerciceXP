1------Create a database called public

CREATE DATABASE public;
2-------Create items table
CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  item_name VARCHAR(50) NOT NULL,
  price INTEGER NOT NULL
);

2------create customers table
CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);
3--insert value into items
INSERT INTO items (item_name, price)VALUES 
('Small Desk', 100),
('Large Desk', 300),
('Fan', 80);

3--insert into customers table
INSERT INTO customers (first_name, last_name)
VALUES 
('Greg', 'Jones'),
('Sandra', 'Jones'),
('Scott', 'Scott'),
('Trevor', 'Green'),
('Melanie', 'Johnson');


-- Fetch all the items
SELECT * FROM items;

-- Fetch all the items with a price above 80 (80 not included)
SELECT * FROM items WHERE price > 80;

-- Fetch all the items with a price below 300 (300 included)
SELECT * FROM items WHERE price <= 300;

-- Fetch all customers whose last name is ‘Smith’
SELECT * FROM customers WHERE last_name = 'Smith';

-- Fetch all customers whose last name is ‘Jones’
SELECT * FROM customers WHERE last_name = 'Jones';

-- Fetch all customers whose first name is not ‘Scott’
SELECT * FROM customers WHERE first_name != 'Scott';