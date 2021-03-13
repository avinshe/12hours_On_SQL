SELECT seller_id FROM
    (SELECT seller_id,
    rank() OVER (ORDER BY sl DESC) rk
     FROM
        (SELECT seller_id,
        sum(price) sl
        FROM sales
        GROUP BY seller_id)
        )
    WHERE rk = 1