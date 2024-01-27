# Write a solution to report the latest login 
# for all users in the year 2020

SELECT user_id,
       MAX(time_stamp) AS last_stamp
FROM Logins
WHERE YEAR(time_stamp) = '2020'
GROUP BY user_id
HAVING last_stamp