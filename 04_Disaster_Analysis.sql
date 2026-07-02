-- ===========================================================
-- DA-01: Identify the Disaster Type with the Highest
--        Cumulative Economic Loss
-- ===========================================================
SELECT
    disaster_type,
    SUM(estimated_loss) AS Total_Economic_Loss
FROM disasters
GROUP BY disaster_type
ORDER BY Total_Economic_Loss DESC
LIMIT 1;

-- ===========================================================
-- DA-02: Identify the Top 5 Most Frequently Occurring
--        Disaster Types
-- ===========================================================
SELECT
    disaster_type,
    COUNT(*) AS total_number_of_occurrences
FROM disasters
GROUP BY
    disaster_type
ORDER BY
    total_number_of_occurrences DESC
LIMIT 5;

-- ===========================================================
-- DA-03: Calculate the Average Economic Loss
--        for Each Severity Level
-- ===========================================================
SELECT
    severity_level,
    AVG(estimated_loss) AS Economic_Loss
FROM disasters
GROUP BY severity_level
ORDER BY Economic_Loss DESC;

-- ===========================================================
-- DA-04: Identify the Year with the Highest Number
--        of Recorded Disasters
-- ===========================================================
SELECT
    YEAR(disaster_date) AS disaster_year,
    COUNT(*) AS total_disasters
FROM disasters
GROUP BY
    YEAR(disaster_date)
ORDER BY
    total_disasters DESC
LIMIT 1;

-- ===========================================================
-- DA-05: Identify Disaster Types Whose Average Economic Loss
--        is Higher Than the Overall Average Economic Loss
-- ===========================================================
SELECT
    disaster_type,
    AVG(estimated_loss) AS economic_loss
FROM disasters
GROUP BY
    disaster_type
HAVING
    economic_loss > (
        SELECT AVG(estimated_loss)
        FROM disasters
    );