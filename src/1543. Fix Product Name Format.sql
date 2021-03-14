-- SELECT Ltrim(lower(product_name)) product_name,
-- TO_CHAR(sale_date,'YYYY-MM') sale_date,
-- count(sale_id) total
-- FROM Sales
-- GROUP BY Ltrim(lower(product_name)),
-- TO_CHAR(sale_date,'YYYY-MM')
-- ORDER BY 1,2


select trim(lower(product_name)) product_name
    , to_char(sale_date, 'YYYY-MM') sale_date
    , count(sale_id) total
from Sales
group by trim(lower(product_name))
    , to_char(sale_date, 'YYYY-MM')
order by 1, 2