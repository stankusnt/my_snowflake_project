{{ config(materialized='table', sort='timestamp', dist='user_id') }}

SELECT *
FROM {{ ref('first_computer_software') }}
WHERE FOUNDED = '2015'