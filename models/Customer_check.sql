USE DATABASE snowflake_sample_data;

USE SCHEMA TPCH_SF1000;

CREATE TABLE Customer_check AS 

SELECT *
FROM {{ ref('Customer_orders') }}
WHERE TOTAL_PRICE > 321080.10