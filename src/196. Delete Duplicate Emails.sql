DELETE p1
FROM Person p1
JOIN Person p2
ON (p1.Email = p2.Email and p1.id > p2.id)