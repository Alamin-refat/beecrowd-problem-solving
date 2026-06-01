# 2621-Amounts Between 10 and 20

/*When it comes to delivering the report on how many products the company has in stock, a part of the report has become corrupted, so the stock keeper asked for help, he wants you to display the following data for him.

Display the name of products whose amount are between 10 and 20 and whose name of the supplier starts with the letter 'P'.*/

SELECT 
    p.name
FROM 
    products p
INNER JOIN 
    providers pr ON p.id_providers = pr.id
WHERE 
    p.amount BETWEEN 10 AND 20
    AND pr.name LIKE 'P%';