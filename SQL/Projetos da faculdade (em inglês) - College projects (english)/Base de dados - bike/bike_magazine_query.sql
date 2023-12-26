USE bike;

# What is the list price of the road bikes (category_id = 7) and wht is the avarege price for this category?

SELECT 
    category_name, product_name, list_price
FROM
    product
    JOIN category
    ON product.category_id = category.category_id
WHERE category_name = 'Road Bikes';

SELECT 
    CONCAT('$ ', ROUND(AVG(list_price),2)) AS 'Avarege Price'
FROM
    product
WHERE
    category_id = 7;

# Retrieve the salary list from the Development department

USE employees;

SELECT 
    dept_name AS 'Department', first_name AS 'Name', last_name AS 'Last Name', CONCAT('$ ',ROUND(salary,2)) AS 'Salary'
FROM
    dept_manager AS dep_m
    JOIN
    departments AS dep
    ON dep_m.dept_no = dep.dept_no
    JOIN employees AS emp
    ON dep_m.emp_no = emp.emp_no
    JOIN salaries AS sal
    ON dep_m.emp_no = sal.emp_no
    WHERE dept_name = 'Customer Service'
    ORDER BY salary DESC;
    

USE magazine;

SELECT 
    magazineName, subscriberFirstName, subscriptionLength
FROM
    magazine
    JOIN subscription
    ON magazine.magazineKey = subscription.magazineKey
    JOIN subscriber
    ON subscription.subscriberKey = subscriber.subscriberKey;
    
SELECT 
    magazineName, AVG(magazinePrice)
FROM
    magazine;