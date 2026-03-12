/*Find the adjacent and available seats in each row of the classroom. The first column of the result must contain the row identifier, the second column the number of the chair on the left and the third the number of the chair on the right. The result must be ordered by the value of the second column of the result (left).*/

SELECT queue, id AS "left", next_id AS "right"
FROM (
    SELECT 
        queue, 
        id, 
        available,
        LEAD(id) OVER(PARTITION BY queue ORDER BY id) AS next_id,
        LEAD(available) OVER(PARTITION BY queue ORDER BY id) AS next_available
    FROM chairs
) AS subquery
WHERE available = TRUE 
  AND next_available = TRUE
ORDER BY "left";