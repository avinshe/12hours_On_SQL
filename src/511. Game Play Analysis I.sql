SELECT player_id, TO_CHAR(min(event_date),'YYYY-MM-DD') first_login 
FROM Activity
GROUP BY player_id