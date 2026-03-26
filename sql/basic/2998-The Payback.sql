/*An investment company desire to calculate the client's payback by finding out what month the project's operations are equal to or higher than the initial investment. For example, client Lucas invested 1000$ and only in the third month he got his payback since the sum of all his operations was superior to his investment. On the other hand, client Daniel didn't reach his payback, since his investment was 500$ and the sum of all his operations was 230$. You need to show the client name, his initial investment, the payback month and the payback value (accumulated value - initial investment value). Furthermore, you must show the result order by the highest to lowest payback.*/

WITH profit_sum AS (
    SELECT 
        c.id,
        c.name,
        c.investment,
        o.month,
        SUM(o.profit) OVER (
            PARTITION BY c.id 
            ORDER BY o.month
        ) AS accumulated
    FROM clients c
    JOIN operations o 
        ON c.id = o.client_id
)

SELECT 
    name,
    investment,
    month AS month_of_payback,
    accumulated - investment AS return
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY id ORDER BY month) AS rn
    FROM profit_sum
    WHERE accumulated >= investment
) t
WHERE rn = 1
ORDER BY return DESC;
