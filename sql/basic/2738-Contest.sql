# 2738-Contest

/*The Mars Technology University has Open Positions for researchers. However, the computer responsible for processing the candidates' data is broken. You must present the candidate list, containing the name and final score (with two decimal places of precision) of each candidate. Remember to show the list ordered by score (highest first).
The score is given by the weighted average described as:

*/

SELECT 
    c.name,
    ROUND(((s.math * 2) + (s.specific * 3) + (s.project_plan * 5)) / 10.0, 2) AS avg
FROM candidate c
JOIN score s ON c.id = s.candidate_id
ORDER BY avg DESC;


