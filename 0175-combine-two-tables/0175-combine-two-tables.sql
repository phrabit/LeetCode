# Write your MySQL query statement below

SELECT A.firstName, A.lastName, B.city, B.state
FROM person AS A
LEFT JOIN Address AS B
ON A.personId = B.personId