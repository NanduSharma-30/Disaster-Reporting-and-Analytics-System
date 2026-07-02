-- ===========================================================
-- HA-01: Identify the Hospital with the Highest Bed Occupancy Rate
-- ===========================================================
SELECT
    hospital_name,
    total_beds,
    available_beds,
    ROUND(((total_beds - available_beds) * 100.0 / total_beds), 2) AS bed_occupancy_percentage
FROM hospitals
ORDER BY
    bed_occupancy_percentage DESC
LIMIT 1;

-- ===========================================================
-- HA-02: Identify the Top 5 Hospitals with the Least
--        Available Beds
-- ===========================================================
SELECT
    h.hospital_name,
    c.city_name,
    h.total_beds,
    h.available_beds
FROM hospitals h
JOIN cities c
    ON h.city_id = c.city_id
ORDER BY
    h.available_beds ASC
LIMIT 5;

-- ===========================================================
-- HA-04: Identify Hospitals Operating Below 20% Available
--        Bed Capacity
-- ===========================================================
SELECT
    h.hospital_name,
    c.city_name,
    h.total_beds,
    h.available_beds,
    ROUND((h.available_beds * 100.0) / h.total_beds, 2) AS available_bed_percentage
FROM hospitals h
JOIN cities c
    ON h.city_id = c.city_id
WHERE
    (h.available_beds * 100.0) / h.total_beds < 20
ORDER BY
    available_bed_percentage ASC;
    
