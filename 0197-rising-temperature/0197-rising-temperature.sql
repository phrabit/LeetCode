-- find all dates' Id with higher temperatures compared to its previous dates (yesterday).

SELECT today.id AS id
FROM Weather AS today INNER JOIN Weather as yesterday
ON today.recordDate = DATE_ADD(yesterday.recordDate, INTERVAL 1 day)
WHERE today.temperature > yesterday.temperature



# ["id", "recordDate", "temperature", "id", "recordDate", "temperature"]
# [[2, "2015-01-02", 25, 1, "2015-01-01", 10], 
#  [3, "2015-01-03", 20, 2, "2015-01-02", 25], 
#  [4, "2015-01-04", 30, 3, "2015-01-03", 20]]}