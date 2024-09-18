/* Prerequisites */
-- Use the Bank_Holidays and bank_inventory tables from Online_Day1_Inclass file to answer the below questions
use onlineshopping;
show tables;
desc customers;
use bank;
desc bank_inventory;

# Question 1:
# 1) Increase the length of geo_location size of 30 characters in the bank_inventory table.
ALTER TABLE Bank_Inventory 
MODIFY Geo_Location VARCHAR(30);



# Question 2:
# 2) Update  estimated_sale_price of bank_inventory table with an increase of 15%  when the quantity of product is more than 4.
UPDATE Bank_Inventory 
SET estimated_sale_price = estimated_sale_price * 1.15 
WHERE Quantity > 4;

 
 
# Question 3:
# 3) Insert below record by increasing 10% of estimated_sale_price to the given estimated_sale_price 
		-- Product : DailCard
		-- Quantity: 2 
		-- price : 380.00 
		-- Puchase_cost : 8500.87
		-- estimated_sale_price: 9000.00
INSERT INTO Bank_Inventory (Product_name, Quantity, price, Purchase_cost, estimated_sale_price) 
VALUES ('DailCard', 2, 380.00, 8500.87, 9900.00);


        
# Question 4:
# 4) Delete the records from bank_inventory when the difference of estimated_sale_price and 
-- Purchase_cost is less than 5% of estimated_sale_price 
DELETE FROM Bank_Inventory 
WHERE (estimated_sale_price - Purchase_cost) < (0.05 * estimated_sale_price);



# Question 5:
# 5) Update the end time of bank holiday to 2020-03-20 11:59:59 for the holiday on 2020-03-20
UPDATE Bank_Holidays 
SET End_time = '2020-03-20 11:59:59' 
WHERE Holiday = '2020-03-20';

 





