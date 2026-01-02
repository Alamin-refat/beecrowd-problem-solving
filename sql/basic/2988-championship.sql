#  2988-Cearense Championship

/*The Soccer Cearense Championship attracts thousands of fans every year and you work for a newspaper and are in charge to calculate the score table. Show a table with the following rows: the team name, number of matches, victories, defeats, draws, and scores. Knowing that the score is calculated with each victory valuing 3 points, draw valuing 1 and defeat valuing 0. In the end, show your table with the score from the highest to the lowest.*/

WITH match_results AS (
  -- Team 1 side
  SELECT 
    team_1 AS team_id,
    team_1_goals AS goals_for,
    team_2_goals AS goals_against,
    CASE 
      WHEN team_1_goals > team_2_goals THEN 1 ELSE 0 
    END AS victory,
    CASE 
      WHEN team_1_goals < team_2_goals THEN 1 ELSE 0 
    END AS defeat,
    CASE 
      WHEN team_1_goals = team_2_goals THEN 1 ELSE 0 
    END AS draw
  FROM matches
  
  UNION ALL
  
  -- Team 2 side
  SELECT 
    team_2 AS team_id,
    team_2_goals AS goals_for,
    team_1_goals AS goals_against,
    CASE 
      WHEN team_2_goals > team_1_goals THEN 1 ELSE 0 
    END AS victory,
    CASE 
      WHEN team_2_goals < team_1_goals THEN 1 ELSE 0 
    END AS defeat,
    CASE 
      WHEN team_2_goals = team_1_goals THEN 1 ELSE 0 
    END AS draw
  FROM matches
),

team_stats AS (
  SELECT 
    t.name,
    COUNT(*) AS matches,
    SUM(victory) AS victories,
    SUM(defeat) AS defeats,
    SUM(draw) AS draws,
    SUM(victory * 3 + draw * 1) AS score
  FROM match_results mr
  JOIN teams t ON mr.team_id = t.id
  GROUP BY t.id, t.name
)

SELECT 
  name,
  matches,
  victories,
  defeats,
  draws,
  score
FROM team_stats
ORDER BY score DESC, name ASC;

