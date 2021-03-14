with t as
(select *, case when (duration)>= 0 and (duration) < 300 then '[0-5>'
when (duration) >= 300 and (duration) < 600 then '[5-10>'
when (duration)>= 600 and (duration)<= 900 then '[10-15>'
else '15 or more' end as bin
from sessions),
t2 as
(select '[0-5>' as bin
union select '[5-10>' as bin
union select '[10-15>' as bin
union select '15 or more' as bin )
select t2.bin, coalesce(z.cnt,0) as total
from t2 left join (select t.bin, count(t.session_id) as cnt from t group by t.bin) z
on t2.bin= z.bin