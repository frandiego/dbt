
    
    



select count(*) as validation_errors
from analytics.dbt.first_model
where id is null


