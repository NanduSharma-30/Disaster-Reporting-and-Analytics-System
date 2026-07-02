-- ===========================================================
-- OI-01: Rank Cities by Total Economic Loss
-- ===========================================================
-- ===========================================================
-- OI-01: Rank Cities by Total Economic Loss
-- ===========================================================
SELECT
    c.city_name,
    SUM(d.estimated_loss) AS economic_loss,
    DENSE_RANK() OVER (
        ORDER BY SUM(d.estimated_loss) DESC
    ) AS city_rank
FROM cities c
JOIN disasters d
    ON c.city_id = d.city_id
GROUP BY
    c.city_name;
    
-- ===========================================================
-- OI-02: Identify the Top 2 Cities Within Each State
--        Based on Total Economic Loss
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
SELECT *
FROM city_loss
WHERE city_rank <= 2;

-- ===========================================================
-- OI-03: Calculate the Running Total of Donations Over Time
-- ===========================================================
SELECT
    donation_date,
    donation_amount,
    SUM(donation_amount) OVER (
        ORDER BY donation_date
    ) AS running_total
FROM donations;
