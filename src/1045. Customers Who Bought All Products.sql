WITH CP AS
    (SELECT count(DISTINCT(product_key)) cnt
     FROM product
    ),
CCP As
    (SELECT c.customer_id, count(distinct(p.product_key)) cnt
    FROM customer c
    JOIN product p
    ON (c.product_key = p.product_key)
     GROUP BY c.customer_id
    )
SELECT c.customer_id
FROM CCP c
JOIN CP cp
ON (cp.cnt = c.cnt)