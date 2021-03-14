SELECT TO_CHAR(activity_date) day,
count(distinct(user_id)) active_users 
FROM activity
WHERE (TO_DATE('2019-07-27')-TO_DATE(activity_date)) < 30
GROUP BY activity_date
ORDER BY activity_date