-- ===========================================================
-- RT-01: Identify the Rescue Team That Completed the Highest
--        Number of Rescue Missions
-- ===========================================================
SELECT
    rt.team_name,
    COUNT(rm.mission_id) AS total_missions
FROM rescue_teams rt
JOIN rescue_missions rm
    ON rt.team_id = rm.team_id
GROUP BY
    rt.team_name
ORDER BY
    total_missions DESC
LIMIT 1;

-- ===========================================================
-- RT-03: Identify the Average Number of Victims Rescued
--        Per Rescue Mission for Each Rescue Team
-- ===========================================================
-- ===========================================================
-- RT-03: Identify the Average Number of People Rescued
--        Per Rescue Mission for Each Rescue Team
-- ===========================================================
SELECT
    rt.team_name,
    AVG(rm.people_rescued) AS average_people_rescued
FROM rescue_teams rt
JOIN rescue_missions rm
    ON rt.team_id = rm.team_id
GROUP BY
    rt.team_name
ORDER BY
    average_people_rescued DESC;
    
-- ===========================================================
-- RT-04: Identify the Rescue Team with the Highest Average
--        People Rescued Per Mission
-- ===========================================================
SELECT
    rt.team_name,
    AVG(rm.people_rescued) AS average_people_rescued
FROM rescue_teams rt
JOIN rescue_missions rm
    ON rt.team_id = rm.team_id
GROUP BY
    rt.team_name
ORDER BY
    average_people_rescued DESC
LIMIT 1;


