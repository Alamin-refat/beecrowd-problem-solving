# 2623-Categories with Various Products

/*The sales industry needs a report to know what products are left in stock.

To help the sales industry, display the product name and category name for products whose amount is greater than 100 and the category ID is 1,2,3,6 or 9. Show the results in ascendent order by category ID.*/


SELECT 
    p.name,
    c.name
FROM 
    products p
INNER JOIN 
    categories c ON p.id_categories = c.id
WHERE 
    p.amount > 100
    AND p.id_categories IN (1, 2, 3, 6, 9)
ORDER BY 
    p.id_categories ASC;