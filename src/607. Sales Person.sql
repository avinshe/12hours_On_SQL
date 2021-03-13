-- SELECT s.name
-- FROM Salesperson s
-- JOIN Orders o
-- ON (s.sales_id = o.sales_id)
-- JOIN company c
-- ON (c.com_id = o.com_id)
-- WHERE c.com_id <> 1
-- order by s.name

SELECT s.name
FROM Salesperson s
WHERE sales_id NOT IN
    (SELECT sales_id
    FROM orders o
    left JOIN company c
    ON (o.com_id = c.com_id)
    WHERE c.name = 'RED')
ORDER BY s.name