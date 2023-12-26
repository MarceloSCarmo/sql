USE bike;

SELECT 
    *
FROM
    customer;

# STEP 2 - First Querry
    
SELECT 
    first_name, last_name, phone, city
FROM
    customer
WHERE
    state = 'TX' AND city = 'Houston';

# Second Querry
    
SELECT 
    product_name, list_price, list_price - 500 AS 'Discount Price'
FROM
    product
WHERE
    list_price > 5000
ORDER BY list_price - 500 DESC;

# Third Querry

SELECT 
    store_id, first_name, last_name, email
FROM
    staff
WHERE
    store_id != 1;

# Fourth Querry

SELECT 
    product_name, model_year, list_price
FROM
    product
WHERE
    product_name LIKE '%spider%';
    
# Fiveth Querry

SELECT 
    product_name, list_price
FROM
    product
WHERE
    list_price BETWEEN 500 AND 550
ORDER BY list_price;

# Sixth Querry

SELECT 
    first_name, last_name, phone, street, city, state, zip_code
FROM
    customer
WHERE
    phone IS NOT NULL AND city REGEXP 'ach|och' OR last_name = 'William';

# Seventh Querry

SELECT 
    product_id, locate('%201%', product_name)
FROM
    product;
#WHERE
#    product_name LIKE '%y%';
#LIMIT 14; 

# Eighth Querry
