SELECT 
    COUNT(*) AS rows, COUNT(DISTINCT job_id) AS unique_job_ids
FROM {{ ref('fct_job_postings') }}