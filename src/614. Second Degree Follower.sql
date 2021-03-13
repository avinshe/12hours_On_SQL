SELECT follower, count(*) num
FROM follow
WHERE followee IN (SELECT follower from follow)
GROUP BY follower
ORDER BY follower


select a.follower, count(distinct b.follower) as num
from
follow as a
inner join
follow as b
on a.follower = b. followee
group by a.follower