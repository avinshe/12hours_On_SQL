SELECT ID, month, 
sum(salary) OVER (PARTITION BY ID ORDER BY MONTH) Salary
FROM Employee
WHERE (Id, month) NOT IN (SELECT id, max(month) month FROM
                         Employee
                         GROUP BY id)
ORDER BY ID, MONTH DESC