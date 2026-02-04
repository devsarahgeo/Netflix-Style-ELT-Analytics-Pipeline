SELECT *
FROM {{ ref('mart_content_metrics') }}
WHERE avg_rating < 0 OR avg_rating > 5
