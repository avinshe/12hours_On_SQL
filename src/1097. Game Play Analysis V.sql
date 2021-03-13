WITH DEN AS
    (SELECT event_date,
     count(1) DENCNT
    FROM activity
    GROUP BY event_date),
FIRLOG AS
    (SELECT a.player_id, min(event_date) first_login
             FROM activity a
             GROUP BY a.player_id),
NUM AS
    (SELECT first_login, count(1) NUMCNT
    FROM
        (FIRLOG) sub
        JOIN activity a1
        ON (a1.event_date - sub.first_login = 1)
        AND a1.player_id = sub.player_id
    GROUP BY first_login)
SELECT TO_CHAR(d.event_date,'YYYY-MM-DD') install_dt,
count(1) installs,
round(NVL(n.numcnt,0)/d.dencnt,2) Day1_retention 
FROM Num n
Right JOIN den d
ON (n.first_login = d.event_date)
JOIN FIRLOG
ON (d.event_date = firlog.First_login)
GROUP BY d.event_date,
round(NVL(n.numcnt,0)/d.dencnt,2)
ORDER BY TO_CHAR(d.event_date,'YYYY-MM-DD')
