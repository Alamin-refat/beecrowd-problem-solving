/*You work for a delivery company and need to show urgently the year and the name of all clients that sent and received blue packages or from the year of 2015, and also the address of your sender or receiver is not from Taiwan. Furthermore, you must order the result by the year decreasingly.*/

SELECT 
    p.year, 
    s.name AS sender, 
    r.name AS receiver
FROM packages p
JOIN users s ON p.id_user_sender = s.id
JOIN users r ON p.id_user_receiver = r.id
WHERE (p.color = 'blue' OR p.year = 2015)
  AND (s.address <> 'Taiwan' AND r.address <> 'Taiwan')
ORDER BY p.year DESC;
