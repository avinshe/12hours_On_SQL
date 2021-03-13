SELECT m.Name
FROM Employee m
JOIN Employee e
ON (m.id = e.managerId)
GROUP BY m.name
HAVING count(*) > 4