with BIKE as (

select 
DISTINCT
START_STATION_ID AS STATION_ID,
START_STATION_NAME AS STATION_NAME,
START_LAT,
START_LNG,




    from {{ source('demo', 'BIKE') }}
    


)

select * from BIKE
