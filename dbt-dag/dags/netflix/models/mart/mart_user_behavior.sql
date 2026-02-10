{{ config(materialized = 'table') }}

SELECT
    u.user_id,
    COUNT(r.rating) AS total_ratings,
    AVG(r.rating) AS avg_rating,
    EXTRACT(HOUR FROM r.rating_timestamp) AS hour_of_day,
    EXTRACT(DAYOFWEEK FROM r.rating_timestamp) AS day_of_week,
    m.genres
FROM fct_ratings r
JOIN dim_users u ON r.user_id = u.user_id
JOIN dim_movies m ON r.movie_id = m.movie_id
GROUP BY 
    u.user_id,
    EXTRACT(HOUR FROM r.rating_timestamp),
    EXTRACT(DAYOFWEEK FROM r.rating_timestamp),
    m.genres
