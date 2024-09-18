-- ------------------------------ DAY - 1 -------------------------------------------------

-- Create database

-- Create table customers (name, mob, city)

-- insert data into customers

-- Add column email

-- Create table orders, add timestamp

-- Select clause (Select - From - Where - Limit)

use onlineshopping;

-- Display all customers.
select * from customers;
-- display first 3 customers from us
select 
 * from customers
where customer_country ="usa"
limit 3;


-- Display first 3 customers

select * from customers
limit 3;


-- Display name and country of first 3 customers
select customer_name,customer_country from customers
limit 3;


-- Display all customers from France.
select * from customers
where customer_country = "france";

-- Display all customers from the country France and country Germany.
select * from customers
where customer_country = "france" or customer_country = "germany";

-- Display all customers from country France and city Berlin.
select * from customers
where customer_country = "france"  or customer_city ="berlin";

-- Display all products belonging to product category 1 but price more than $10
select * from products
where category_id =1 and price > 10;

-- Display all customers who do not belong to Germany.
select * from customers
where NOT customer_country = "germany";

-- Display all customers whose country is NOT Germany and NOT USA.
select * from customers
where NOT (customer_country = "germany" or customer_country ="usa");

-- Display name, city and country of the customers from country - Germany and France but not from city Berlin
select customer_name, customer_country, customer_city
from customers
where  (customer_country = "germany" or customer_country ="france") and NOT customer_city="berlin";
-- Display name, city and country of the customers from country -
# Germany and France and from city Seattle
select customer_name, customer_country, customer_city
from customers
where  customer_country = "germany" or customer_country ="france" or customer_city="seattle";
-- Display names of all products which are costlier than $100.
select * from products
where price >100;
-- Display name and price of all the products in price range of 20 to 50
select product_name, price
from products
where price between 20 and  50;

-- Display products with price less than $20.
select product_name, price
from products
where price < 20;

-- What is the price of 'Teatime Chocolate Biscuits'?
select price 
from products
where product_name = 'Teatime Chocolate Biscuits';

-- What is the price in INR of 'Teatime Chocolate Biscuits'?
select price,price * 80 as price_in_inr
from products
where product_name = 'Teatime Chocolate Biscuits';

-- Display all products with a price BETWEEN $10 and $20.
SELECT * 
FROM products 
WHERE price BETWEEN 10 AND 20;


-- Display all the products outside the range of $10 to $20.
SELECT * 
FROM products 
WHERE price < 10 OR price > 20;

-- Display all orders with purchase date BETWEEN ‘2018-07-04’ and ‘2018-07-09. 
SELECT * 
FROM orders 
WHERE purchase_date BETWEEN '2018-07-04' AND '2018-07-09';

-- Display all customers located in Germany, France and the UK.
SELECT * 
FROM customers 
WHERE customer_country IN ('Germany', 'France', 'UK');


select * from customers;

-- Display all customers NOT located in Germany, France or the UK.
SELECT * 
FROM customers 
WHERE customer_country NOT IN ('Germany', 'France', 'UK');

-- Display all products with a price BETWEEN $10 and $20. Besides do not show products with a CategoryID of 1,2, or 3.

SELECT * 
FROM products 
WHERE price BETWEEN 10 AND 20 
AND category_id NOT IN (1, 2, 3);


SELECT * 
FROM products 

