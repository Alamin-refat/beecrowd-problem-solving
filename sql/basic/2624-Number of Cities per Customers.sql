# 2624-Number of Cities per Customers

/*The company board asked you for a simple report on how many cities the company has already reached.

To do this you must display the number of distinct cities in the customers table.*/

SELECT COUNT(DISTINCT city) AS count
FROM customers;