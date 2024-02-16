# Write a solution to report the name and balance of users 
# with a balance higher than 10000

SELECT NAME, 
       SUM(AMOUNT) AS BALANCE
FROM USERS AS A
INNER JOIN TRANSACTIONS AS B
ON A.ACCOUNT = B.ACCOUNT
GROUP BY NAME
HAVING BALANCE > 10000

