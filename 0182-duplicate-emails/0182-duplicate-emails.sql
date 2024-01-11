# Write your MySQL query statement below
# all the duplicate emails. 
# Note that it's guaranteed that the email field is not NULL.

SELECT email AS Email
FROM Person
GROUP BY email
having COUNT(*)>1