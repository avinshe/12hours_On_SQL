SELECT TO_CHAR(order_date, 'YYYY-MM') month,
count(order_id) order_count ,
count(distinct customer_id) customer_count 
FROM Orders
WHERE invoice > 20
GROUP BY TO_CHAR(order_date, 'YYYY-MM')