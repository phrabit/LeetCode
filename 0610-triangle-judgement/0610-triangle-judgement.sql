# Write your MySQL query statement below

SELECT x,y,z,
CASE WHEN (x>=y+z) OR (y>=x+z) OR (z>=x+y) THEN "No"
     ELSE "Yes" END AS triangle
FROM Triangle