SELECT min(dist) shortest
FROM
    (SELECT abs(p1.x-p2.x) dist
    FROM point p1
    JOIN point p2
    ON (p1.x <> p2.x))