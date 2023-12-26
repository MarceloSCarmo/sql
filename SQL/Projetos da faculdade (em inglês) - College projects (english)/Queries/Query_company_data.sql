--I need a list of all the customers with Gmail accounts because there is a new Google application that can interface 
--with them through their email. We'd like to contact them and invite them to use it. 

USE bike; 

SELECT  
    * 
FROM 
    customer; 
SELECT  
    first_name, last_name, email 
FROM 
    customer 
WHERE 
    email IS NOT NULL 
ORDER BY 
email; 
 
--Haro called and wants to discount all their bikes by 20%. Please get me the name of the bikes from Haro (brand_id 2) 
--and show the original price and then a column with the sales price with a readable column header. 

USE bike;  

SELECT  
    * 
FROM 
    product; 
SELECT  
    brand_id, product_name, list_price, ROUND(list_price - ((list_price*20)/100), 2) AS 'Sales Price' 
FROM 
    product 
WHERE 
    brand_id = 2 
ORDER BY list_price; 

--We need to see the order number and order date from all orders at Santa Cruz Bikes (store_id 1) but I don't need to see the orders made 
--by Mireya Copeland who's staff_id is 2. Just Fabiola, Genna and Virgie's orders (everyone else who works there). 

USE bike; 

SELECT  
    * 
FROM 
    cust_order; 
SELECT  
    store_id, cust_order_id, order_date, staff_id 
FROM 
    cust_order 
WHERE 
    store_id = 1 AND staff_id != 2 
ORDER BY order_date; 