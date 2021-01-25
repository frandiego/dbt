
with dbt__CTE__INTERNAL_test as (
SELECT 
	sum( case when id is null then 1 else 0 )/ count(*) as total_nulls

	FROM analytics.dbt.first_model

	HAVING total_nulls <= .1
)select count(*) from dbt__CTE__INTERNAL_test