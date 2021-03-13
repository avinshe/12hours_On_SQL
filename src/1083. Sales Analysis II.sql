SELECT s.buyer_id
FROM SALES s
JOIN product p
ON (s.product_id = p.product_id)
WHERE p.product_name = 'S8'
MINUS
SELECT s.buyer_id
FROM SALES s
JOIN product p
ON (s.product_id = p.product_id)
WHERE p.product_name = 'iPhone'