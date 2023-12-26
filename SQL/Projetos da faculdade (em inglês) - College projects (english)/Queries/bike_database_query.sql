--What is the list price of the road bikes (category_id = 7) and what is the average price for this category? 
 
USE bike;  

SELECT  

    category_name, product_name, list_price 

FROM 

    product 

    JOIN category 

    ON product.category_id = category.category_id 

WHERE category_name = 'Road Bikes'; 

SELECT  

    CONCAT('$ ', ROUND(AVG(list_price),2)) AS 'Average Price' 

FROM 

    product 

WHERE 

    category_id = 7; 

--Retrieve the salary list from the Customer Service department 

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

--Retrieve the salary list of subscribers 

USE magazine; 

SELECT  

    magazineName, subscriberFirstName, subscriptionLength 

FROM 

    magazine 

    JOIN subscription 

    ON magazine.magazineKey = subscription.magazineKey 

    JOIN subscriber 

    ON subscription.subscriberKey = subscriber.subscriberKey; 