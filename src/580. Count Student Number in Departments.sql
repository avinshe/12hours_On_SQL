SELECT d.dept_name,
NVL(count(s.student_id),0) student_number
FROM department d
LEFT JOIN student s
ON (d.dept_id = s.dept_id)
GROUP BY d.dept_name
ORDER BY NVL(count(s.student_id),0) DESC, d.dept_name