WITH qual AS    
    (SELECT Query_name,
     rating,
    rating/position part_quality
    FROM Queries)
    (SELECT Query_name,
    round(sum(part_quality)/count(1),2) quality,
    round((sum(case when rating < 3 then 1 else 0 end)/count(1))*100,2) poor_query_percentage
    FROM qual
    GROUP BY Query_name)