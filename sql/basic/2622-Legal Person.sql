#  2622-Legal Person
/*The sales industry wants to make a promotion for all clients that are legal entities. For this you must display the name of the customers that are legal entity.*/

SELECT 
    c.name
FROM 
    customers c
INNER JOIN 
    legal_person lp ON c.id = lp.id_customers;
    