SELECT id, Movie, description, rating
FROM cinema
WHERE mod(id,2) = 1
AND description <> 'boring'
ORDER BY rating DESC