-- FAILED!!!!!
-- WITH CONS_P AS
--     (SELECT count(DISTINCT(a1.player_ID)) CP
--     FROM Activity a1
--     JOIN Activity a2
--     ON (a1.event_date = a2.event_date -1
--        AND a1.player_id = a2.player_id)),
-- TOT_P AS
-- (SELECT count(distinct(player_id)) TP FROM
-- Activity)
-- SELECT round(CONS_P.CP/TOT_P.TP,2) fraction FROM
-- CONS_P
-- CROSS JOIN TOT_P

WITH min_p AS
    (SELECT player_id, min(event_date) event_date FROM
    ACTIVITY
    GROUP BY player_id),
CONS_P AS
    (SELECT count(distinct(a.player_id)) CP
    FROM activity a
    JOIN min_p
    ON (a.event_date -1 = min_p.event_date
       AND a.player_id = min_p.player_id)),
TOT_P AS
(SELECT count(distinct(player_id)) TP FROM
Activity)
SELECT round(CONS_P.CP/TOT_P.TP,2) fraction FROM
CONS_P
CROSS JOIN TOT_P