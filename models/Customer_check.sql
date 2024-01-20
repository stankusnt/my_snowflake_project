SELECT *
FROM {{ ref('Customer_orders') }}
WHERE TOTAL_PRICE > 321080.10