SELECT u.name,
NVL(sum(r.distance),0) travelled_distance 
FROM Users u
LEFT JOIN
Rides  r
ON (u.id = r.user_id)
GROUP BY
u.name
ORDER BY
NVL(sum(r.distance),0) DESC, u.name