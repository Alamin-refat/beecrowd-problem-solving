# 2609-Products by Categories

/*As usual the sales industry is doing an analysis of how many products we have in stock, and you can help them.
Then your job will display the name and amount of products of each category.*/

SELECT c.name, SUM(p.amount) AS sum
FROM products p
INNER JOIN categories c ON p.id_categories = c.id
GROUP BY c.name
ORDER BY c.name;
