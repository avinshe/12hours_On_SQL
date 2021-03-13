SELECT Name Customers
FROM Customers
WHERE ID NOT IN (
SELECT customerID
FROM Orders)

-- (SELECT Name customers
-- FROM customers)
-- MINUS
-- (SELECT c.Name Customers
-- FROM Customers c
-- JOIN Orders o
-- ON c.Id = o.customerId)