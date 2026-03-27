/*Your friend Zé Maria is in an ambush because he made an update without a where and end up zeroing all values from the price column. For your luck, the price can be recalculated knowing the product type.

If the product type is equal to A, the price will be 20.0
If the product type is equal to B, the price will be 70.0
If the product type is equal to C, the price will be 530.5
Your job is to show the name and price of all products. You must show the products in groups by the following order: first, all products form type A, second type B, and lastly the type C. Furthermore, the products in each group (A, B, C) must be printed in descending order by ID.*/

SELECT 
    name,
    CASE 
        WHEN type = 'A' THEN 20.0
        WHEN type = 'B' THEN 70.0
        WHEN type = 'C' THEN 530.5
    END AS price
FROM products
ORDER BY 
    type ASC, 
    id DESC;
