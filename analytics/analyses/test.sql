SELECT 
    search_term,
    COUNT(*) AS postings
FROM raw.jobs.raw_job_postings
WHERE search_term IS NOT NULL