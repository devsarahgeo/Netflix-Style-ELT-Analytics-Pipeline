SELECT
    m.movie_id,
    m.movie_title,
    m.genres,
    COUNT(r.rating) AS num_ratings,
    AVG(r.rating) AS avg_rating,
    STDDEV(r.rating) AS rating_sd
FROM fct_ratings r
JOIN dim_movies m ON r.movie_id = m.movie_id
GROUP BY m.movie_id, m.movie_title, m.genres