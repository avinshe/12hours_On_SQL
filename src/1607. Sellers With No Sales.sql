select seller_name from seller where seller_id  not in (select seller_id from orders 
where TO_CHAR(sale_date,'YYYY') =2020)
order by seller_name