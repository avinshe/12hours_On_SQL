select to_char(a.sell_date,'YYYY-MM-DD') sell_date,count(distinct a.product) num_sold,
listagg(a.product,',') within group(order by a.product) products
from (select distinct sell_date,product from activities) a
group by a.sell_date