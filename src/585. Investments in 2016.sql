SELECT round(sum(i1.TIV_2016),2) TIV_2016 
             FROM INSURANCE i1
WHERE (i1.LAT,i1.LON) NOT IN (
SELECT LAT, LON
FROM Insurance
GROUP BY LAT, LON
HAVING count(*) > 1)
AND i1.TIV_2015 IN (SELECT TIV_2015
              FROM INSURANCE
              GROUP BY TIV_2015
              HAVING count(*)>1)