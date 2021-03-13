SELECT max(num) num
FROM
    (SELECT num
    FROM my_numbers
    GROUP BY num
    HAVING count(*) = 1)