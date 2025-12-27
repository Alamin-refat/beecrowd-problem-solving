#  2617-Provider Ajax SA

/*The financial sector has encountered some problems in the delivery of one of our providers, the delivery of the products does not match the invoice.

Your job is to display the name of the products and the name of the provider, for the products supplied by the provider 'Ajax SA'.*/

SELECT p.name, pr.name
from products p
INNER JOIN providers pr ON p.id_providers = pr.id
where pr.name = 'Ajax SA'
