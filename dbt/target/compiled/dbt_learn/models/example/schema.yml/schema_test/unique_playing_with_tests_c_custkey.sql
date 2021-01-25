
    
    



select count(*) as validation_errors
from (

    select
        c_custkey

    from analytics.dbt.playing_with_tests
    where c_custkey is not null
    group by c_custkey
    having count(*) > 1

) validation_errors


