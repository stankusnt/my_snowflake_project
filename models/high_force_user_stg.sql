{{ config(materialized='table') }}

SELECT ACTIVITY, LEFT_LBF, RIGHT_LBF
FROM {{ ref('user_stg') }}
WHERE LEFT_LBF > 10