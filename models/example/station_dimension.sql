with BIKE as (

select 
DISTINCT
START_STATIO_ID AS STATION_ID,
START_STATION_NAME AS STATION_NAME,
START_LAT,
START_LNG,




    from {{ ref('stg_bike') }}
    


)

select * from BIKE
