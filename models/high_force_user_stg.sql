{{ config(materialized='table', sort='timestamp', dist='user_id') }}

SELECT *
FROM {{ ref('user_stg') }}
WHERE LEFT_LBF > 10