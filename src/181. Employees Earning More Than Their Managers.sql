--NAME, SALARY, MNAME, SALARY
-- SELECT eName Employee
-- FROM
--     (SELECT e.Name mName,
--     e.Salary mSal,
--     m.name eName,
--     m.salary eSal
--     FROM Employee e --Manager
--     JOIN Employee m --Employee
--     ON e.ID = m.ManagerId) sub
-- WHERE sub.mSal < sub.eSal

SELECT 
m.name Employee
FROM Employee e
JOIN Employee m 
ON e.ID = m.ManagerId
WHERE e.Salary < m.Salary --Does not work on Hive