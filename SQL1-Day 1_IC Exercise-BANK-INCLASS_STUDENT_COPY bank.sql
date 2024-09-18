# Question 1:
# 1) Create a Database Bank.
create database bank;
use bank;

# Question 2:
# 2) Create a table with the name “Bank_Inventory” with the following columns
-- Product  with string data type and size 10 --
-- Quantity with numerical data type --
-- Price with data type that can handle all real numbers
-- purchase_cost with data type which always shows two decimal values --
-- estimated_sale_price with data type float --
create table Bank_Inventory(
product_name varchar(10),
Quantity int ,
price real,
purchase_cost decimal(15,2),
estimated_sale_price float);
desc Bank_Inventory;
drop table Bank_Inventory;
create table Bank_Inventory(
product_name varchar(10),
Quantity int ,
price real,
purchase_cost decimal(15,2),
estimated_sale_price float);



# Question 3:
# 3) Display all column names and their datatype and size in Bank_Inventory.
desc Bank_Inventory;

# Question 4:
# 4) Insert the below two records into Bank_Inventory table .
-- 1st record with values --
			-- Product : PayCard
			-- Quantity: 2 
			-- price : 300.45 
			-- Puchase_cost : 8000.87
			-- estimated_sale_price: 9000.56 --
 

INSERT INTO Bank_Inventory (Product_name, Quantity, price, Purchase_cost, estimated_sale_price) 
VALUES 
('PayCard', 2, 300.45, 8000.87, 9000.56),
('PayPoints', 4, 200.89, 7000.67, 6700.56);

-- 2nd record with values --
			-- Product : PayPoints
			-- Quantity: 4
			-- price : 200.89 
			-- Puchase_cost : 7000.67
			-- estimated_sale_price: 6700.56
            INSERT INTO Bank_Inventory (Product_name, Quantity, price, Purchase_cost, estimated_sale_price) 
VALUES ('PayPoints', 4, 200.89, 7000.67, 6700.56);

# Question 5:
# 5) Add a column : Geo_Location to the existing Bank_Inventory table with data type varchar and size 20 .

ALTER TABLE Bank_Inventory 
ADD Geo_Location VARCHAR(20);


# Question 6:
# 6) What is the value of Geo_Location for product : ‘PayCard’?
SELECT Geo_Location 
FROM Bank_Inventory 
WHERE Product_name = 'PayCard';

-- Null


# Question 7:
# 7) How many characters does the  Product : ‘PayCard’ store in the Bank_Inventory table.
select * from bank_inventory;
SELECT LENGTH(product_name) AS CharacterCount 
FROM Bank_Inventory 
WHERE product_name = 'PayCard';



# Question 8:
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;


UPDATE Bank_Inventory 
SET Geo_Location = 'Delhi-City' 
WHERE product_name = 'PayCard' AND Geo_Location IS NULL;

set sql_safe_updates = 0;
update Bank_Inventory set Geo_Location = 'Delhi-City';
select * From Bank_Inventory;
# b) How many characters does the  Geo_Location field value ‘Delhi-City’ stores in the Bank_Inventory table
SELECT LENGTH('Delhi-City') AS CharacterCount;

# Question 9:
# 9) update the Product field from CHAR to VARCHAR size 10 in Bank_Inventory 
ALTER TABLE Bank_Inventory 
MODIFY Product_name VARCHAR(10);

# Question 10:
# 10) Reduce the size of the Product field from 10 to 6 and check if it is possible. 
SELECT Product_name
FROM Bank_Inventory 
WHERE LENGTH(Product_name) > 6;
ALTER TABLE Bank_Inventory 
MODIFY Product_name VARCHAR(6); #The error "Data truncated for column 'Product_name'" indicates that there are values in the Product_name column that exceed the new size limit of VARCHAR(6). 
---- MySQL is unable to truncate those values automatically because it protects against data loss.



# Question 11:
# 11) Bank_inventory table consists of ‘PayCard’ product details .
-- For ‘PayCard’ product, Update the quantity from 2 to 10 
SET SQL_SAFE_UPDATES = 0;

UPDATE Bank_Inventory 
SET Quantity = 10 
WHERE product_name = 'PayCard' AND Quantity = 2;

 # Question 12:
# 12) Create a table named as Bank_Holidays with below fields 
-- a) Holiday field which displays or accepts only date 
-- b) Start_time field which also displays or accepts date and time both.  
-- c) End_time field which also displays or accepts date and time along with the timezone also. 
CREATE TABLE Bank_Holidays (
    Holiday DATE,
    Start_time DATETIME,
    End_time DATETIME,
    Timezone VARCHAR(50)  -- To store timezone information
);


desc Bank_Holidays;
 # Question 13:
# 13) Step 1: Insert today’s date details in all fields of Bank_Holidays 
-- Step 2: After step1, perform the below 
-- Postpone Holiday to next day by updating the Holiday field 
INSERT INTO Bank_Holidays (Holiday, Start_time, End_time) 
VALUES (CURDATE(), NOW(), NOW());
UPDATE Bank_Holidays 
SET Holiday = DATE_ADD(Holiday, INTERVAL 1 DAY);


desc Bank_Holidays;
select * from Bank_Holidays;
# Question 14:
# 14) Modify  the Start_time data with today's datetime in the Bank_Holidays table 
UPDATE Bank_Holidays 
SET Start_time = NOW();


# Question 15:
# 15) Update the End_time with UTC time(GMT Time) in the Bank_Holidays table. 
UPDATE Bank_Holidays 
SET End_time = UTC_TIMESTAMP();


# Question 16:
# 16) Select all columns from Bank_Inventory without mentioning any column name
select * from Bank_Inventory;
# Question 17:
# 17)  Display output of PRODUCT field as NEW_PRODUCT in  Bank_Inventory table 
select product_name from Bank_Inventory as New_Product;
# Question 18:
# 18)  Display only one record from bank_Inventory 
select * from Bank_Inventory limit 1;

# Question 19:
# 19) Modify  the End_time data with today's datetime in the Bank_Holidays table 

UPDATE Bank_Holidays 
SET End_time = NOW();

# Question 20:
# 20) Display the first five rows of the Geo_location field of Bank_Inventory.
SELECT Geo_Location 
FROM Bank_Inventory 
LIMIT 5;


