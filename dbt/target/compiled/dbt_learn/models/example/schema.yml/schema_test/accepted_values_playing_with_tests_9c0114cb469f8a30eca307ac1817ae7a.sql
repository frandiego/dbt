
    
    




with all_values as (

    select distinct
        c_mktsegment as value_field

    from analytics.dbt.playing_with_tests

),

validation_errors as (

    select
        value_field

    from all_values
    where value_field not in (
        'BUILDING','AUTOMOBILE','MACHINERY','HOUSEHOLD','FURNITURE'
    )
)

select count(*) as validation_errors
from validation_errors


