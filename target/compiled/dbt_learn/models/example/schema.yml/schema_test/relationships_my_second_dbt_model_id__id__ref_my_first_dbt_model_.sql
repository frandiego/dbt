
    
    




select count(*) as validation_errors
from (
    select id as id from analytics.dbt.my_second_dbt_model
) as child
left join (
    select id as id from analytics.dbt.first_model
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null


