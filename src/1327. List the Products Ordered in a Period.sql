SELECT product_name,
unit
FROM
    (SELECT p.product_name,
    sum(o.unit) unit
    FROM Products p
    JOIN Orders o
    ON (p.product_id = o.product_id)
    WHERE TO_CHAR(o.order_date,'YYYY-MM') = '2020-02'
    GROUP BY p.product_name)
WHERE unit > 99