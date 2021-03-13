SELECT a.player_id, a.device_id
FROM
    (SELECT player_id, min(event_date) evd
    FROM activity
    GROUP BY player_id) sub
JOIN activity a
ON (a.player_id = sub.player_id
   AND a.event_date = sub.evd)