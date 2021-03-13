SELECT id, 
num 
FROM
    (SELECT id, num,
    rank() OVER (ORDER BY num DESC) rk
    FROM
        (SELECT id, sum(cnt) num
         FROM
            (SELECT accepter_id id, count(requester_id) cnt
            FROM request_accepted
            GROUP BY accepter_id
            UNION ALL
            SELECT requester_id id, count(accepter_id) cnt
            FROM request_accepted
            GROUP BY requester_id)
         GROUP BY id
        )
     )
WHERE rk = 1