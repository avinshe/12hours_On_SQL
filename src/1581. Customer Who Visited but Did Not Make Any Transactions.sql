
SELECT v.customer_id,
count(v.visit_id) count_no_trans 
FROM visits v
LEFT JOIN Transactions t
ON (v.visit_id = t.visit_id)
WHERE t.amount IS NULL
GROUP BY v.customer_id