
    
    



select count(*) as validation_errors
from (

    select
        date

    from analytics.dbt.cumulative_orders_by_date
    where date is not null
    group by date
    having count(*) > 1

) validation_errors


