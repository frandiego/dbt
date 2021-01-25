
        
        
    

    

    merge into analytics.dbt.incremental_time as DBT_INTERNAL_DEST
        using analytics.dbt.incremental_time__dbt_tmp as DBT_INTERNAL_SOURCE
        on 
            DBT_INTERNAL_SOURCE.t_time = DBT_INTERNAL_DEST.t_time
        

    
    when matched then update set
        "T_TIME_SK" = DBT_INTERNAL_SOURCE."T_TIME_SK","T_TIME_ID" = DBT_INTERNAL_SOURCE."T_TIME_ID","T_TIME" = DBT_INTERNAL_SOURCE."T_TIME","T_HOUR" = DBT_INTERNAL_SOURCE."T_HOUR","T_MINUTE" = DBT_INTERNAL_SOURCE."T_MINUTE","T_SECOND" = DBT_INTERNAL_SOURCE."T_SECOND","T_AM_PM" = DBT_INTERNAL_SOURCE."T_AM_PM","T_SHIFT" = DBT_INTERNAL_SOURCE."T_SHIFT","T_SUB_SHIFT" = DBT_INTERNAL_SOURCE."T_SUB_SHIFT","T_MEAL_TIME" = DBT_INTERNAL_SOURCE."T_MEAL_TIME"
    

    when not matched then insert
        ("T_TIME_SK", "T_TIME_ID", "T_TIME", "T_HOUR", "T_MINUTE", "T_SECOND", "T_AM_PM", "T_SHIFT", "T_SUB_SHIFT", "T_MEAL_TIME")
    values
        ("T_TIME_SK", "T_TIME_ID", "T_TIME", "T_HOUR", "T_MINUTE", "T_SECOND", "T_AM_PM", "T_SHIFT", "T_SUB_SHIFT", "T_MEAL_TIME")

