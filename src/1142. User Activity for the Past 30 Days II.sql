SELECT NVL(round(sum(sd)/count(*),2),0) average_sessions_per_user 
FROM
    (SELECT user_id,
    count(distinct(session_id)) sd
    FROM Activity
    WHERE (TO_DATE('2019-07-27')- TO_DATE(Activity_date)) < 30
    GROUP BY user_id)