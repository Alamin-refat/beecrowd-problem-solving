# 2620-Orders in First Half

/*The company's financial audit is asking us for a report for the first half of 2016. Then display the customers name and order number for customers who placed orders in the first half of 2016.*/

SELECT 
    c.name,
    o.id
FROM 
    customers c
INNER JOIN 
    orders o ON c.id = o.id_customers
WHERE 
    EXTRACT(YEAR FROM o.orders_date) = 2016
    AND EXTRACT(MONTH FROM o.orders_date) BETWEEN 1 AND 6
ORDER BY 
    o.id;