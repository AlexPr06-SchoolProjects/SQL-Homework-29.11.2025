
-- Query 1
SELECT
	department_id AS [Department_ID],
	COUNT(id)     AS [Employee_Count],
	SUM(salary)   AS [Total_Salary],
	AVG(salary)   AS [Avg_Salary],
	MIN(salary)   AS [Min_Salary],
	MAX(salary)   AS [Max_Salary]
FROM employees
GROUP BY department_id;


-- Query 2
SELECT
	YEAR(birthday)                AS [Birth_Year],
	COUNT(id)                     AS [Employee_Count],
	COUNT(DISTINCT department_id) AS [Departments_Count],
	AVG(salary)                   AS [Avg_Salary]
FROM employees
GROUP BY YEAR(birthday);


-- Query 3

-- Вопрос касательно условия этой задачи - на лекции в субботу
-- хотел бы спросить, ибо долго буду писать.
SELECT 
    m.id          AS Manager_ID,
    COUNT(e.id)   AS Subordinates_Count,
    AVG(e.salary) AS Avg_Subordinate_Salary,
    SUM(e.salary) AS Total_Subordinates_Salary
FROM employees m
INNER JOIN employees e
    ON e.manager_id = m.id
GROUP BY m.id
ORDER BY m.id;



-- Query 4
SELECT 
	DATEDIFF(YEAR, hire_date, GETDATE()) AS [Years_Worked],
	COUNT(id)                            AS [Employee_Count],
	AVG(salary)                          AS [Avg_Salary],
	COUNT(bonus_percent)                 AS [Employees_With_Bonus]
FROM employees
GROUP BY (DATEDIFF(YEAR, hire_date, GETDATE()));
