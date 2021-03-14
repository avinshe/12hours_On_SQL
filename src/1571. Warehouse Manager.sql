SELECT w.name warehouse_name,
sum(w.units*p.width*p.length*p.height) volume
FROM Warehouse w
JOIN products p
ON (w.product_id = p.product_id)
GROUP BY w.name