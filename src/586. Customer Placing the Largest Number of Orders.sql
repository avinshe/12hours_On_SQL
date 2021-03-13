SELECT customer_number FROM
(SELECT customer_number,
rank() OVER (ORDER BY cnt DESC) rk FROM
(SELECT customer_number, count(order_number) cnt
FROM orders
GROUP BY customer_number)
)
WHERE rk = 1


-- SELECT customer_number FROM
-- Orders
-- WHERE Rownum = 1
-- GROUP BY customer_number
-- ORDER BY count(*) DESC