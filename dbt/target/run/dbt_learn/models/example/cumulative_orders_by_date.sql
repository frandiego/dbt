

      create or replace transient table analytics.dbt.cumulative_orders_by_date  as
      (select distinct
       o_orderdate,
       sum(o_totalprice) over (order by o_orderdate) as cumulative_sales

       FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"

       order by o_orderdate
      );
    