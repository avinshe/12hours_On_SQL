SELECT customer_id,
name
FROM
    (SELECT c.customer_id,
     c.name,
    TO_CHAR(order_date,'YYYY-MM') order_date,
    sum(o.quantity*p.price) spend
    FROM Orders o
    JOIN customers c
    ON (o.customer_id = c.customer_id)
    JOIN Product p
    ON (p.product_id = o.product_id)
    WHERE TO_CHAR(o.order_date,'YYYY-MM') IN ('2020-06','2020-07')
     GROUP BY
     c.customer_id,
     c.name,
    TO_CHAR(order_date,'YYYY-MM')
    )
WHERE spend > 99
GROUP BY customer_id,
name
HAVING count(*) > 1