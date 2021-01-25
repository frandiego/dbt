
    
    



select count(*) as validation_errors
from analytics.dbt.cumulative_orders_by_date
where date is null


