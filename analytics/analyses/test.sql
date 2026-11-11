SELECT COUNT(*) AS skills_count
FROM {{ ref('stg_job_skills') }}