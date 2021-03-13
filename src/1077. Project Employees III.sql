SELECT project_id,
employee_id
FROM
    (SELECT p.project_id,
    e.employee_id,
    rank() OVER (PARTITION BY p.project_id ORDER BY e.experience_years DESC) rk
    FROM project p
    JOIN Employee e
    ON (p.employee_id = e.employee_id)
    )
WHERE rk = 1