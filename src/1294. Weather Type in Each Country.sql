SELECT country_name,
CASE WHEN sub.AW < 16 THEN 'Cold'
WHEN sub.AW > 24 THEN 'Hot'
ELSE 'Warm' END AS Weather_type
FROM
    (SELECT country_id,
    avg(weather_state) aw
    FROM Weather
    WHERE TO_CHAR(day,'YYYY-MM') = '2019-11'
     -- BETWEEN '2019-10-31' AND '2019-12-01'
    GROUP BY country_id) sub
JOIN countries c
ON (c.country_id = sub.country_id)