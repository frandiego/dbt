
    
    



select count(*) as validation_errors
from analytics.dbt.snowflake_customer_purchases
where c_custkey is null


