{{ config(materialized='ephemeral')}}
SELECT 
    job_id,
    job_title,
    company_name,
    salary_min,
    salary_max,
    searched_at
FROM {{ref('stg_job_postings')}}
WHERE job_title = 'Senior Data Engineer'
 AND company_name = 'Fraser Health'