{{ config(materialized='table', sort='timestamp', dist='user_id') }}


SELECT *
FROM B181_U13 A
LEFT JOIN B181_U13 B ON A.DATETIME = MIN(B.DATETIME)