SELECT student_id,
course_id,
grade
FROM
    (SELECT student_id,
    course_id,
    grade,
    rk,
    row_number() OVER (PARTITION BY student_id, rk ORDER BY course_id, rk) rn
    FROM
        (SELECT student_id,
        course_id,
        grade,
        rank() OVER (PARTITION BY Student_id ORDER BY grade DESC) rk
        FROM Enrollments)
    )
WHERE rk = 1
AND rn = 1