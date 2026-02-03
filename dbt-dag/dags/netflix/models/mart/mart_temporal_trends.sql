SELECT
    DATE_TRUNC('month', r.rating_timestamp) AS month,
    AVG(r.rating) AS avg_rating,
    COUNT(*) AS total_ratings
FROM fct_ratings r
GROUP BY month
ORDER BY month
