SELECT player_id,
TO_CHAR(event_date,'YYYY-MM-DD') event_date,
sum(games_played) OVER (PARTITION BY player_id ORDER BY Event_date) games_played_so_far 
FROM activity
ORDER BY 1, 2 DESC