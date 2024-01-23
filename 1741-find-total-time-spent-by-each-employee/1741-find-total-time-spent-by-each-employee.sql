# group by 를 하게 되면 맨위에 행만 보이게 됨.

SELECT event_day AS day,
       emp_id,
       SUM(out_time - in_time) AS total_time
FROM Employees
GROUP BY day, emp_id
