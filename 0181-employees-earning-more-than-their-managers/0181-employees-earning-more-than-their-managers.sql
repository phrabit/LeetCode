-- find the employees who earn more than their managers.

SELECT em.name as "Employee"
FROM Employee as em Inner JOIN Employee as ma
ON em.managerId = ma.id
WHERE em.salary > ma.salary
