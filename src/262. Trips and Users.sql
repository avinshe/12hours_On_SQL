WITH TOT AS
    (SELECT t.Request_at,
    count(1) Tot_Val_Trips
    FROM Trips t
    JOIN Users u
    ON (t.Client_id = u.Users_id)
    JOIN Users d
    ON (t.Client_id = d.Users_id)
    WHERE u.Banned = 'No'
    AND d.Banned = 'No'
    GROUP BY t.Request_at),
SUC AS
    (SELECT t.Request_at,
    count(1) Tot_Can_trips
    FROM Trips t
    LEFT JOIN Users u
    ON (t.Client_id = u.Users_id)
    LEFT JOIN Users d
    ON (t.Client_id = d.Users_id)
    WHERE u.Banned = 'No'
    AND d.Banned = 'No'
    AND t.Status <> 'completed'
    GROUP BY t.Request_at
    )
SELECT TOT.Request_at day, Round(NVL(SUC.Tot_Can_trips/TOT.Tot_Val_Trips,0),2) AS "Cancellation Rate"
FROM TOT 
LEFT JOIN SUC
ON (TOT.Request_at = SUC.Request_at)
WHERE TO_DATE(TOT.Request_at,'YYYY-MM-DD') BETWEEN TO_DATE('2013-10-01','YYYY-MM-DD') AND TO_DATE('2013-10-03','YYYY-MM-DD')
ORDER BY TOT.Request_at


-- {"Trips": [["1", "1", "10", "1", "cancelled_by_client", "2013-10-04"]], 
-- "Users": [["1", "No", "client"], ["10", "No", "driver"]]}}