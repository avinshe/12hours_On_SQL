select 
	id,
	sum(Jan_Revenue) as Jan_Revenue,
	sum(Feb_Revenue) as Feb_Revenue,
	sum(Mar_Revenue) as Mar_Revenue,
	sum(Apr_Revenue) as Apr_Revenue,
	sum(May_Revenue) as May_Revenue,
	sum(Jun_Revenue) as Jun_Revenue,
	sum(Jul_Revenue) as Jul_Revenue,
	sum(Aug_Revenue) as Aug_Revenue,
	sum(Sep_Revenue) as Sep_Revenue,
	sum(Oct_Revenue) as Oct_Revenue,
	sum(Nov_Revenue) as Nov_Revenue,
	sum(Dec_Revenue) as Dec_Revenue
from (
    select
        department.*,
        case when month = 'Jan' then revenue end as 'Jan_Revenue',
        case when month = 'Feb' then revenue end as 'Feb_Revenue',
        case when month = 'Mar' then revenue end as 'Mar_Revenue',
        case when month = 'Apr' then revenue end as 'Apr_Revenue',
        case when month = 'May' then revenue end as 'May_Revenue',
        case when month = 'Jun' then revenue end as 'Jun_Revenue',
        case when month = 'Jul' then revenue end as 'Jul_Revenue',
        case when month = 'Aug' then revenue end as 'Aug_Revenue',
        case when month = 'Sep' then revenue end as 'Sep_Revenue',
        case when month = 'Oct' then revenue end as 'Oct_Revenue',
        case when month = 'Nov' then revenue end as 'Nov_Revenue',
        case when month = 'Dec' then revenue end as 'Dec_Revenue'
    from department
) tbl
group by id;