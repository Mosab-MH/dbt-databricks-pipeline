SELECT
 *,
 COUNT(*) OVER() AS total_rows 
FROM {{ source('jobs', 'raw_job_postings') }} 
WHERE error IS NULL


