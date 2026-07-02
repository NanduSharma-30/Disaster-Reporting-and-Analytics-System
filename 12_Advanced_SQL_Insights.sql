-- ===========================================================
-- AI-01: Identify the Top 3 Most Economically Impacted
--        Cities in Each State
-- ===========================================================
WITH city_loss AS (
    SELECT
        s.state_name,
        c.city_name,
        SUM(d.estimated_loss) AS total_economic_loss,
        ROW_NUMBER() OVER (
            PARTITION BY s.state_name
            ORDER BY SUM(d.estimated_loss) DESC
        ) AS city_rank
    FROM states s
    JOIN cities c
        ON s.state_id = c.state_id
    JOIN disasters d
        ON c.city_id = d.city_id
    GROUP BY
        s.state_name,
        c.city_name
)
SELECT
    state_name,
    city_name,
    total_economic_loss,
    city_rank
FROM city_loss
WHERE city_rank <= 3
ORDER BY
    state_name,
    city_rank;