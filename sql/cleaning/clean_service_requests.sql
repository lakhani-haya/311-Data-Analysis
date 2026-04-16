CREATE OR REPLACE TABLE clean_data.service_requests AS
SELECT *
FROM (
    SELECT
        request_id,
        created_at,
        closed_at,
        status,
        neighbourhood,
        CASE
            WHEN category_code IN ('POT', 'POTHOLE') THEN 'POT'
            WHEN category_code IN ('GRAF', 'GRAFFITI') THEN 'GRAF'
            WHEN category_code IN ('LIGHT', 'STRL') THEN 'STRL'
            ELSE category_code
        END AS category,
        ROW_NUMBER() OVER (
            PARTITION BY request_id
            ORDER BY created_at DESC
        ) AS rn
    FROM raw_data.service_requests
)
WHERE rn = 1;
