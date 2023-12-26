# 											STEP 1
USE v_art;

SELECT 
    *
FROM
    artist;
    
# First Querry    
INSERT INTO artist VALUES (9,'Johannes', NULL, 'Vermeer', 1632, 1674, 'Netherlands', 'n');

# Second Querry
SELECT 
    fname, mname, lname, dob, dod, country, local
FROM
    artist
ORDER BY lname;

# Third Querry
SELECT 
    fname, dod+1 As dod
FROM
    artist
WHERE
    fname = 'Johannes';
    
# Fourth Querry
SELECT 
    *
FROM
    artist;

DELETE FROM artist 
WHERE
    artist_id = 9;

SELECT 
    *
FROM
    artist ;

#												STEP2
USE bike;

SELECT 
    *
FROM
    customer;

# Fiveth Querry
    
SELECT 
    first_name, last_name, phone, city
FROM
    customer
WHERE
    state = 'TX' AND city = 'Houston';

# Sixth Querry
    
SELECT 
    product_name, list_price, list_price - 500 AS 'Discount Price'
FROM
    product
WHERE
    list_price > 5000
ORDER BY list_price - 500 DESC;

# Seventh Querry

SELECT 
    store_id, first_name, last_name, email
FROM
    staff
WHERE
    store_id != 1;

# Eighth Querry

SELECT 
    product_name, model_year, list_price
FROM
    product
WHERE
    product_name LIKE '%spider%';
    
# Nineth Querry

SELECT 
    product_name, list_price
FROM
    product
WHERE
    list_price BETWEEN 500 AND 550
ORDER BY list_price;

# Tenth Querry

SELECT 
    first_name, last_name, phone, street, city, state, zip_code
FROM
    customer
WHERE
    phone IS NOT NULL AND city REGEXP 'ach|och' OR last_name = 'William';

# Eleventh Querry

SELECT 
    product_id, locate('%201%', product_name)
FROM
    product;
    
# 											STEP 3
USE magazine;

SELECT 
    *
FROM
    magazine;
    
# Twelveth Querry

SELECT 
    magazineName,
    ROUND(magazinePrice - ((magazinePrice * 3) / 100),
            2) AS '3% Off'
FROM
    magazine;
    
# Thirdteenth Querry

SELECT 
    subscriberKey,
    round(DATEDIFF('2020-12-20', subscriptionStartDate) / 365) AS 'Years since subscription'
FROM
    subscription;

# Fourteenth Querry

SELECT 
    subscriptionStartDate,
    subscriptionLength,
    DATE_FORMAT(DATE_ADD(subscriptionStartDate,
                INTERVAL 12 MONTH),
            '%M %e, %Y') AS 'subscriptionEnd'
FROM
    subscription;