# 2619-Super Luxury

/*Our company is looking to make a new contract for the supply of new super luxury products, and for this we need some data of our products.

Your job is to display the name of the products, the name of the providers and the price, for the products whose price is greater than 1000 and its category is' Super Luxury.*/

SELECT 
    prod.name,
    prov.name,
    prod.price
FROM products prod
INNER JOIN providers prov ON prod.id_providers = prov.id
INNER JOIN categories cat ON prod.id_categories = cat.id
WHERE prod.price > 1000
  AND cat.name = 'Super Luxury';