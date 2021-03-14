SELECT machine_id,
round(sum(CASE WHEN activity_type = 'end' THEN timestamp
   WHEN activity_type = 'start' THEN -1*timestamp
   END)/count(DISTINCT process_id),3) processing_time 
FROM activity
GROUP BY machine_id