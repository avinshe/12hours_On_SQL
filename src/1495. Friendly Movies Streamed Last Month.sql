SELECT title
FROM content c
JOIN TVProgram p
ON (c.content_id = p.content_id)
WHERE c.Kids_content = 'Y'
AND c.content_type = 'Movies'
AND TO_CHAR(p.program_date,'YYYY-MM') = '2020-06'
group by title