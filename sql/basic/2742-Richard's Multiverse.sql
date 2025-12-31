# 2742-Richard Multiversed

/*Richard is a famous scientist because of his multiverse theory, where he describes every hypothetical set of parallel universes by means of a database. Thanks to that you now have a job..
As your first task, you must select every Richard from dimensions C875 and C774, together with its existence probability (the famous factor N) with three decimal places of precision.
Remember that the N factor is calculated by multiplying the omega value by 1,618. The data must be sorted by the least omega value.*/

SELECT 
    lr.name,
    ROUND(lr.omega * 1.618, 3) AS "The N Factor"
FROM life_registry lr
JOIN dimensions d ON lr.dimensions_id = d.id
WHERE lr.name LIKE 'Richard%' 
    AND d.name IN ('C875', 'C774')
ORDER BY lr.omega;

