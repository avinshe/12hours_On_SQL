-- SELECT email
-- FROM Person
-- GROUP BY email
-- HAVING count(*) > 1

SELECT sub.email FROM 
    (SELECT email, count(1) cnt
    FROM Person
    GROUP BY email) sub
WHERE sub.cnt > 1