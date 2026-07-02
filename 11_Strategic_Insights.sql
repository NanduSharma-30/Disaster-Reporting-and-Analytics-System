-- ===========================================================
-- SI-01: Compare Each Disaster's Economic Loss with the
--        Previous Disaster's Economic Loss
-- ===========================================================
SELECT
    disaster_id,
    disaster_type,
    disaster_date,
    estimated_loss AS current_economic_loss,
    LAG(estimated_loss) OVER (
        ORDER BY disaster_date
    ) AS previous_economic_loss
FROM disasters;

-- ===========================================================
-- SI-02: Compare Each Disaster's Economic Loss with the
--        Average Economic Loss of Its Disaster Type
-- ===========================================================
SELECT
    disaster_id,
    disaster_type,
    estimated_loss,
    AVG(estimated_loss) OVER (
        PARTITION BY disaster_type
    ) AS average_loss
FROM disasters;

-- ===========================================================
-- SI-03: Compare Each Disaster's Economic Loss with the
--        Next Recorded Disaster's Economic Loss
-- ===========================================================
SELECT
    disaster_id,
    disaster_type,
    disaster_date,
    estimated_loss AS current_economic_loss,
    LEAD(estimated_loss) OVER (
        ORDER BY disaster_date
    ) AS next_economic_loss
FROM disasters;