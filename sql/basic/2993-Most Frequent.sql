# 2993-Most Frequent

/*Given a single-column table with integers values, which is the most frequent value, in other words, the statistical mode of the values?*/

SELECT amount AS most_frequent_value
FROM value_table
GROUP BY amount
ORDER BY COUNT(*) DESC
LIMIT 1;