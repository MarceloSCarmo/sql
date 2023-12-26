USE bike;

SELECT 
    cust_order_id, DATE_FORMAT(DATE_ADD(shipped_date, INTERVAL 2 MONTH), '%M %e, %Y') AS 'New Shipped Date', 
    ROUND(DATEDIFF(NOW(), shipped_date) / 365) AS 'Years since product shipped'
FROM
    cust_order;