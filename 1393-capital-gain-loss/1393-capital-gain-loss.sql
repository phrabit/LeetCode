# Write your MySQL query statement below
-- Capital gain/loss for each stock.

SELECT stock_name,
       SUM(CASE WHEN operation = 'Buy' THEN -price
       ELSE +price END) AS capital_gain_loss
FROM Stocks
GROUP BY stock_name