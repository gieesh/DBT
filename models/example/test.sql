with dbt as (select 

* from {{ source('demo', 'BIKE') }}
Limit 10
)
select * from dbt 
