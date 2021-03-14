WITH POSTS AS
    (SELECT sub_id post_id
    FROM Submissions
    WHERE parent_id IS NULL)
SELECT p.post_id,
count(distinct(s.sub_id)) number_of_comments 
FROM submissions s
RIGHT JOIN POSTS p
ON (p.post_id = s.parent_id)
GROUP BY p.post_id
ORDER BY p.post_id