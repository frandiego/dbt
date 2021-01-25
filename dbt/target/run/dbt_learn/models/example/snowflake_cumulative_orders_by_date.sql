

      create or replace transient table analytics.dbt.snowflake_cumulative_orders_by_date  as
      (

WITH AUXILIAR AS (
SELECT o_orderdate as date, sum(o_totalprice) as orders
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
GROUP BY o_orderdate)

SELECT
  date,
  sum(orders) over (partition by NULL order by date ASC rows unbounded preceding) as cumulative_orders
  FROM auxiliar
  order by date desc
      );
    