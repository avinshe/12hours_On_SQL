SELECT employee_id,
count(employee_id) OVER (PARTITION BY team_id) team_size
FROM Employee