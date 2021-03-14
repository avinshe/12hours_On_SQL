WITH NUM AS
    (SELECT contest_id,
    count(user_id) cnt
    FROM register
    GROUP BY contest_id),
DEN AS
    (SELECT count(*) cnt FROM USERS
    )
SELECT n.contest_id, round(n.cnt/d.cnt*100,2) percentage 
FROM NUM n
CROSS JOIN
DEN d
ORDER BY round(n.cnt/d.cnt*100,2) DESC, contest_id