SELECT product_id,
round(sum(units*price)/sum(units),2) average_price 
FROM
    (SELECT p.product_id, s.units, p.price
    FROM prices p
    JOIN UnitsSold s
    ON (s.purchase_date BETWEEN p.start_date AND p.end_date
       and p.product_id = s.product_id)
     )
GROUP BY product_id