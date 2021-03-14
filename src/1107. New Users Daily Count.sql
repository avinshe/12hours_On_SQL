-- WITH FIRLOG AS
--     (SELECT USER_ID, activity , min(activity_date) First_login
--     FROM TRAFFIC
--     WHERE ACTIVITY_DATE > '2019-03-31'
--      AND activity = 'login'
--     GROUP BY USER_ID, activity ),
-- PREVLOG AS
--     (SELECT USER_ID, activity, min(activity_date) prev_login
--     FROM traffic
--     WHERE activity = 'login'
--     AND ACTIVITY_DATE < '2019-04-01'
--     GROUP BY USER_ID, activity),
-- T_MINUS AS
--     (SELECT p.user_id, p.activity, f.first_login
--     FROM FIRLOG f
--     JOIN PREVLOG p
--     ON (f.user_id = p.user_id
--        AND f.activity = p.activity))
-- SELECT TO_CHAR(First_login,'YYYY-MM-DD') login_date ,
-- count((user_id)) user_count  
-- FROM
--     (SELECT First_login,
--     user_id
--     FROM FIRLOG
--     MINUS
--     SELECT First_login,
--     user_id
--     FROM T_MINUS)
-- GROUP BY First_Login
-- ORDER BY First_Login


WITH FIRLOG as
    (SELECT user_id,
     min(activity_date) First_login
    FROM traffic 
    WHERE activity = 'login'
    GROUP BY user_id
    )
SELECT TO_CHAR(First_login,'YYYY-MM-DD') login_date,
count(distinct(user_id)) user_count
from FIRLOG
where (TO_DATE('2019-06-30','YYYY-MM-DD') - First_login) <= 90
GROUP BY First_login
ORDER BY First_login