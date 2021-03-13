SELECT project_id FROM    
    (SELECT project_id,
    rank() OVER (ORDER BY cnt DESC) rk
     FROM
        (SELECT project_id, count(employee_id) cnt
        FROM project
        GROUP BY project_id) sub
     )
WHERE rk = 1