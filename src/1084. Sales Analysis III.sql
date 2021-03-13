SELECT p.product_id,
p.product_name
FROM product p
JOIN sales s
ON (p.product_id = s.product_id)
WHERE s.sale_date BETWEEN '2019-01-01' AND '2019-03-31'
AND p.product_id NOT IN (
SELECT p.product_id
FROM product p
JOIN sales s
ON (p.product_id = s.product_id)
WHERE s.sale_date > '2019-03-31')


SELECT p.product_id,
       p.product_name
FROM   product p
       JOIN sales s
         ON p.product_id = s.product_id
GROUP  BY p.product_id,
          p.product_name
HAVING Min(sale_date) >= '2019-01-01'
       AND Max(sale_date) <= '2019-03-31' 