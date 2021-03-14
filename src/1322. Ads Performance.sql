SELECT ad_id, ctr
FROM
    (SELECT ad_id,
    round(NVL(SUM(CASE WHEN action = 'Clicked' THEN 1 END)*100,0)/NVL(SUM(CASE WHEN action <> 'Ignored' THEN 1 END),1),2) ctr
    FROM Ads
    GROUP BY ad_Id)
ORDER BY 2 DESC,1