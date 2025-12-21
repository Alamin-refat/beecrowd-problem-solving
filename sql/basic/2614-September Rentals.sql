# 2614-September Rentals

/*The video store is making its semi-annual report and needs your help. All you have to do is select the name of the clients and the date of rental, from the rentals made in September 2016.*/

SELECT 
    c.name,
    r.rentals_date
FROM 
    customers c
INNER JOIN 
    rentals r ON c.id = r.id_customers
WHERE 
    EXTRACT(YEAR FROM r.rentals_date) = 2016
    AND EXTRACT(MONTH FROM r.rentals_date) = 9
ORDER BY 
    r.rentals_date;

    