-- ===========================================================
-- DO-01: Calculate the Total Donation Amount Received
--        for Each Disaster
-- ===========================================================
SELECT
    d.disaster_id,
    ds.disaster_type,
    SUM(d.donation_amount) AS total_donation_amount
FROM donations d
JOIN disasters ds
    ON d.disaster_id = ds.disaster_id
GROUP BY
    d.disaster_id,
    ds.disaster_type
ORDER BY
    total_donation_amount DESC;

-- DO-02: Identify the Top 5 Donors by Total Donation Amount
-- ===========================================================
-- ===========================================================
-- DO-02: Identify the Top 5 Donors by Total Donation Amount
-- ===========================================================
SELECT
    donor_name,
    SUM(donation_amount) AS total_donation_amount
FROM donations
GROUP BY
    donor_name
ORDER BY
    total_donation_amount DESC
LIMIT 5;

-- ===========================================================
-- DO-03: Calculate the Average Donation Amount Received
--        for Each Disaster Type
-- ===========================================================
SELECT
    AVG(donation_amount) AS Average_Donation_Amount,
    di.disaster_type
FROM donations do
JOIN disasters di
    ON do.disaster_id = di.disaster_id
GROUP BY
    di.disaster_type
ORDER BY
    Average_Donation_Amount DESC;
    
-- ===========================================================
-- DO-04: Identify Donors Whose Total Donation Amount is
--        Greater Than the Overall Average Donation Amount
-- ===========================================================
SELECT
    donor_name,
    SUM(donation_amount) AS total_donation_amount
FROM donations
GROUP BY
    donor_name
HAVING
    total_donation_amount > (
        SELECT AVG(donation_amount)
        FROM donations
    )
ORDER BY
    total_donation_amount DESC;