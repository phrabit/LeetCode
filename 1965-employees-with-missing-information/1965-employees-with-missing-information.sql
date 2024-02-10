# Write your MySQL query statement below

#######

SELECT A.employee_id
FROM 
(SELECT employee_id
FROM Employees
UNION
SELECT employee_id
FROM Salaries) AS A
WHERE employee_id NOT IN
(SELECT employee_id FROM Employees) 
OR employee_id NOT IN
(SELECT employee_id FROM Salaries)
ORDER BY A.employee_id
