

      create or replace transient table analytics.dbt.snowflake_customer_purchases  as
      (SELECT
        c.c_custkey,
        c.c_name,
        c.c_nationkey as nation,
       sum(o.o_totalprice) as total_orders
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c
LEFT JOIN "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o
ON c.c_custkey = o.o_custkey
GROUP BY
        c.c_custkey,
        c.c_name,
        c.c_nationkey
      );
    