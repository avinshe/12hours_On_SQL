WITH ALL_SJ AS
    (SELECT s.student_id, s.student_name, j.subject_name
    FROM Students s
    CROSS JOIN Subjects j)
SELECT SJ.student_id, sj.student_name, sj.subject_name, count(e.student_id) attended_exams 
FROM ALL_SJ sj
LEFT JOIN Examinations e
ON (sj.student_id = e.student_id
   AND sj.subject_name = e.subject_name)
GROUP BY SJ.student_id, sj.student_name,sj.subject_name
ORDER BY SJ.student_id, sj.student_name,sj.subject_name
