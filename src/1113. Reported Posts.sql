SELECT extra report_reason,
count(distinct(post_id)) report_count 
FROM Actions
WHERE action = 'report'
AND Extra IS NOT NULL
AND (TO_DATE('2019-07-05') - TO_DATE(action_date)) = 1
GROUP BY extra