# show the unique ID of each user, 
# If a user does not have a unique ID replace just show null

SELECT CASE WHEN B.unique_id is Not NULL THEN B.unique_id
       ELSE null END AS unique_id,
       A.name
FROM Employees AS A
LEFT JOIN EmployeeUNI AS B
ON A.id = B.id