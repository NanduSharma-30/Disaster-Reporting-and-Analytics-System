-- ===========================================================
-- VA-01: Identify the City with the Highest Number of Victims
-- ===========================================================
SELECT
    c.city_name,
    COUNT(v.victim_id) AS total_number_of_victims
FROM victims v
JOIN disasters d
    ON v.disaster_id = d.disaster_id
JOIN cities c
    ON d.city_id = c.city_id
GROUP BY
    c.city_name
ORDER BY
    total_number_of_victims DESC
LIMIT 1;

-- ===========================================================
-- VA-02: Calculate the Average Age of Victims
--        for Each Disaster Type
-- ===========================================================
SELECT
    d.disaster_type,
    AVG(v.age) AS average_age
FROM victims v
JOIN disasters d
    ON v.disaster_id = d.disaster_id
GROUP BY
    d.disaster_type
ORDER BY
    average_age DESC;
    
-- ===========================================================
-- VA-03: Analyze the Gender-wise Distribution of Victims
-- ===========================================================
SELECT
    gender,
    COUNT(*) AS Total_Number_of_Victims
FROM victims
GROUP BY
    gender
ORDER BY
    Total_Number_of_Victims DESC;