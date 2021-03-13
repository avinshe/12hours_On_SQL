SELECT sub.Salary SecondHighestSalary
FROM
    (SELECT
    Id,
    Salary,
    rank() OVER(ORDER BY SALARY DESC) rk
    FROM Employee) sub
Right JOIN Employee e
ON (e.id = sub.id)
WHERE sub.rk = 2;

-- SELECT
-- max(salary) SecondHighestSalary 
-- FROM
-- Employee    
-- WHERE salary < (SELECT max(salary) salary
--     FROM Employee)