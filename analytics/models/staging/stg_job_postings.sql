WITH source AS (
    SELECT *
    FROM {{ source('jobs', 'raw_job_postings') }}
    WHERE error IS NOT TRUE
)

SELECT
    job_id,
    job_title,
    company_name,
    job_location,
    job_via,
    job_posted_at,
    job_salary,
    job_schedule_type,
    job_work_from_home,
    job_extensions_raw,
    search_time,
    search_date,
    search_term,
    search_location
FROM source


