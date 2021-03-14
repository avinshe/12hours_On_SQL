SELECT u.name,
sum(t.amount) balance
FROM Users u
JOIN Transactions t
ON (u.account = t.account)
GROUP BY u.name
HAVING sum(t.amount) > 10000