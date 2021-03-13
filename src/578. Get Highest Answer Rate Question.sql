WITH SQQ AS
    (SELECT question_id, count(1) SQ
    FROM survey_log
    WHERE action = 'show'
    GROUP BY question_id),
AQQ AS
    (SELECT question_id, count(1) AQ
    FROM survey_log
    WHERE action = 'answer'
    GROUP BY question_id),
AR AS
    (SELECT a.question_id, 
    a.AQ/s.SQ asq
    FROM
    SQQ s
    JOIN AQQ a
    ON (s.question_id = a.question_id))
SELECT question_id survey_log   FROM
    (SELECT question_id,
    rank() OVER (ORDER BY asq DESC) rk,
    row_number() OVER (ORDER BY question_id) rn
    FROM
    AR)
WHERE rk = 1
and rn = 1