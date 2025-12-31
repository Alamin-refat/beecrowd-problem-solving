# 2740-League

/*The International Underground Excavation League is a success between alternative sports, however the staff responsible for organizing the events doesn’t understand computers at all, they only know how to dig and the sport rule set. As such, you were hired to solve the League’s problem.
Select the three first placed with the initial phrase "Podium: " and select the last two, which will be demoted to a lower league with the initial phrase “Demoted:".*/

SELECT name
FROM (
    SELECT 
        'Podium: ' || team AS name,
        1 AS sort_group,
        position
    FROM league
    WHERE position <= 3

    UNION ALL

    SELECT 
        'Demoted: ' || team AS name,
        2 AS sort_group,
        position
    FROM league
    WHERE position >= (SELECT MAX(position) - 1 FROM league)
) AS results
ORDER BY sort_group, position;
