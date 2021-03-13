SELECT w1.ID
FROM Weather w1
Join Weather w2
ON (TO_DATE(w1.RecordDate,'YYYY-MM-DD') - TO_DATE(w2.RecordDate,'YYYY-MM-DD') = 1
    AND w1.Temperature > w2.Temperature)

-- SELECT sub.Id id
-- FROM
--     (SELECT Id,
--     recordDate,
--     Temperature,
--     LEAD(Id,1,0) OVER (ORDER BY RecordDate DESC) ld
--     FROM Weather) sub
-- JOIN Weather w
-- ON (w.id = sub.ld)
-- WHERE sub.Temperature > w.Temperature

-- Weather w1
-- JOIN Weather w2
-- ON w1.id = w2.id - 1