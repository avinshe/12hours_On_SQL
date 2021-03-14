WITH PREF AS
    (SELECT count(delivery_id) cnt
    FROM delivery
    WHERE order_date = customer_pref_delivery_date),
TOT AS
    (SELECT count(delivery_id) cnt
    FROM delivery)
SELECT NVL(round(p.cnt/t.cnt*100,2),0) immediate_percentage  FROM
PREF p
CROSS JOIN TOT t