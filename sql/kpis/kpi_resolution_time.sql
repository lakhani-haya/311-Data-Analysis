CREATE OR REPLACE TABLE reporting.kpi_resolution_time AS
SELECT
    category,
    COUNT(*) AS total_requests,
    AVG(TIMESTAMP_DIFF(closed_at, created_at, HOUR)) AS avg_resolution_hours,
    APPROX_QUANTILES(
        TIMESTAMP_DIFF(closed_at, created_at, HOUR), 100
    )[OFFSET(50)] AS median_hours,
    APPROX_QUANTILES(
        TIMESTAMP_DIFF(closed_at, created_at, HOUR), 100
    )[OFFSET(95)] AS p95_hours
FROM clean_data.service_requests
WHERE closed_at IS NOT NULL
GROUP BY category
ORDER BY avg_resolution_hours DESC;
