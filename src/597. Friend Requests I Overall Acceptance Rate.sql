WITH fr AS
(SELECT count(*) cnt FROM
    (SELECT DISTINCT sender_id, send_to_id
     FROM friendRequest fr
    )),
ra AS
(SELECT count(*) cnt FROM
    (SELECT DISTINCT requester_id, accepter_id
    FROM requestAccepted ra))
SELECT round(NVL(ra.cnt/DECODE(fr.cnt,0,1,fr.cnt),0),2) accept_rate 
FROM FR
CROSS JOIN RA