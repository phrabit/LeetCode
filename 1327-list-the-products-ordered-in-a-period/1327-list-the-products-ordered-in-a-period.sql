#  names of products that have at least 100 units ordered in February 2020 
-- and their amount.

SELECT P.product_name, SUM(O.unit) AS unit
FROM Products AS P
INNER JOIN Orders AS O
ON P.product_id = O.product_id
WHERE O.order_date LIKE "2020-02%"
GROUP BY P.product_id
HAVING unit >= 100
