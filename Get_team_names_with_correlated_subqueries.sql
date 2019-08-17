SELECT
    m.date,
   (SELECT team_long_name
    FROM team AS t
    -- Connect the team to the match table
    WHERE t.team_api_id = m.hometeam_id) AS hometeam
FROM match AS m;
SELECT
    m.date,
    (SELECT team_long_name
     FROM team AS t
     WHERE t.team_api_id = m.hometeam_id) AS hometeam,
    -- Connect the team to the match table
    (SELECT team_long_name
     FROM team AS t
     WHERE t.team_api_id = m.awayteam_id) AS awayteam,
    -- Select home and away goals
     m.home_goal,
     m.away_goal
FROM match AS m;