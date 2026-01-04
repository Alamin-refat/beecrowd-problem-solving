# 2994-How much does a Doctor earn

/*You work in the IT sector for a hospital and need to calculate the payment revenue from each of the doctors. Each doctor earns 150$ per hour plus a percentage that depends on the work shift. For example, the doctor Wellington worked 1 hour in the day shift, and 2 hours in the night shift, therefore his weekly salary will be: ( ( 1 * 150 ) + 1% ) + ( ( 2 * 150 ) + 15% ) = 496.5. Furthermore, you can use the function ROUND(value,1) to show the salary with 1 decimal place e order the result from the highest to lowest salary.*/

SELECT 
    d.name,
    ROUND(SUM(a.hours * 150 * (1 + w.bonus / 100)), 1) AS salary
FROM attendances a
JOIN doctors d ON a.id_doctor = d.id
JOIN work_shifts w ON a.id_work_shift = w.id
GROUP BY d.id, d.name
ORDER BY salary DESC;