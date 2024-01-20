{{ config(materialized='table', sort='timestamp', dist='user_id') }}


SELECT *
FROM FREECOMPANYDATASET A
LEFT JOIN FREECOMPANYDATASET B ON A.ID = MIN(B.ID)
WHERE B_INDUSTRY = 'computer software'