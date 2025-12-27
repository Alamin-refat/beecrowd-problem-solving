# 2618-Imported Products

/*Our company's import sector needs a report on the import of products from our Sansul providers.

Your task is to display the name of the products, the name of the supplier and the name of the category, for the products supplied by the supplier 'Sansul SA' and whose category name is 'Imported'.*/

SELECT pro.name, prov.name, cat.name
from products pro
INNER join providers prov ON pro.id_providers = prov.id
INNER join categories cat ON pro.id_categories = cat.id
Where prov.name= 'Sansul SA'AND cat.name= 'Imported';