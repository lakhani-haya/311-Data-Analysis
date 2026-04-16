CREATE OR REPLACE TABLE reporting.kpi_top_categories AS
SELECT
    category,
    COUNT(*) AS total_requests
FROM clean_data.service_requests
GROUP BY category
ORDER BY total_requests DESC;
