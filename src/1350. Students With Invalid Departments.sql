SELECT s.id, s.name
FROM students s
LEFT JOIN Departments  d
ON (s.department_id = d.id)
WHERE d.id IS NULL