with daily_weather as (

    select 
    date(time) as Daily_Weather,
    weather,
    temp,
    pressure,
    humidity,
    clouds
    from {{ source('demo', 'WEATHER')}}
 

),
daily_weather_agg as (

    select 
    daily_weather,
    weather,
    round(avg(temp),2),
    round(avg(pressure),2),
    round(avg(humidity),2),
    round(avg(clouds),2)
    
    from daily_weather  
group by daily_weather, weather
    
    qualify ROW_NUMBER () OVER (PARTITION BY daily_weather ORDER BY COUNT(weather) DESC) =1
)

select * from daily_weather_agg


