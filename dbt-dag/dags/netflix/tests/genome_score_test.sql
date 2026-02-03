SELECT
    *
FROM {{ ref('fct_genome_score') }}
WHERE relevance_score <= 0
