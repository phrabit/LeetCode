-- product_name, year, and price 
-- for each sale_id 
-- in the Sales table.

SELECT B.product_name,
       A.year,
       A.price
FROM Sales AS A
INNER JOIN Product AS B
ON A.product_id = B.product_id