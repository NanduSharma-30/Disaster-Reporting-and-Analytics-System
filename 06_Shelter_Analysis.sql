-- ===========================================================
-- SA-02: Identify the Top 5 Shelters with the Most
--        Available Capacity
-- ===========================================================
SELECT
    s.shelter_name,
    c.city_name,
    s.capacity,
    s.current_occupancy,
    (s.capacity - s.current_occupancy) AS available_capacity
FROM shelters s
JOIN cities c
    ON s.city_id = c.city_id
ORDER BY
    available_capacity DESC
LIMIT 5;

-- ===========================================================
-- SA-03: Identify Shelters Operating Above 90% Occupancy
-- ===========================================================
SELECT
    s.shelter_name,
    s.capacity,
    s.current_occupancy,
    c.city_name,
    (current_occupancy * 100.0) / capacity AS Occupancy_Percentage
FROM shelters s
JOIN cities c
    ON s.city_id = c.city_id
WHERE
    (current_occupancy * 100.0) / capacity > 90
ORDER BY
    Occupancy_Percentage DESC;
    
