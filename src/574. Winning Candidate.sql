SELECT Name
FROM candidate
WHERE ID IN (SELECT candidateid 
FROM (SELECT candidateid, rank() OVER (ORDER BY cnt DESC) rk FROM
            (
SELECT candidateid, count(*) cnt
FROM Vote
GROUP BY candidateid)
             )
             WHERE rk = 1)


-- SELECT c.name
-- FROM candidate c
-- JOIN vote v
-- ON (c.id = v.candidateid)
-- WHERE Rownum = 1
-- GROUP BY c.name
-- ORDER BY count(*) DESC
