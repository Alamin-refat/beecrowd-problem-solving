# 2616-No Rental

/*The video store company intends to do a promotion for customers who have not yet done any rental.
Your job is to deliver us the ID and the name of the customers who have not done any rental. Sort the output by ID.*/

SELECT 
    c.id,
    c.name
FROM 
    customers c
LEFT JOIN 
    locations l ON c.id = l.id_customers
WHERE 
    l.id_customers IS NULL
ORDER BY 
    c.id;