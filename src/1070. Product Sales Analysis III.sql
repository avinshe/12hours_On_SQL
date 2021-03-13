SELECT s.product_id,
s.year first_year,
s.quantity,
s.price
FROM
    (SELECT Sale_id, year,
    rank() OVER (PARTITION BY product_id ORDER BY year) rk
    FROM Sales) sub
JOIN Sales s
ON (sub.sale_id = s.sale_id
   AND sub.year = s.year)
WHERE sub.rk = 1