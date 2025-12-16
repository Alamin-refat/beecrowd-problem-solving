# 2605 - Executive Representatives
/*The financial sector needs a report on the providers of the products we sell. The reports include all categories, but for some reason, providers of products whose category is the executive, are not in the report.
Your job is to return the names of the products and providers whose category ID is 6.*/

SELECT 
    p.name AS name,
    pr.name AS name
FROM products p
INNER JOIN providers pr ON p.id_providers = pr.id
INNER JOIN categories c ON p.id_categories = c.id
WHERE c.id = 6;
