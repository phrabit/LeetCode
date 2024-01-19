-- IDs of the users who visited without making any transactions 
-- And the number of times they made these types of visits.

SELECT V.customer_id, COUNT(*) AS count_no_trans
FROM Visits AS V
LEFT JOIN Transactions AS T
ON V.visit_id = T.visit_id
WHERE T.visit_id IS NULL
GROUP BY V.customer_id