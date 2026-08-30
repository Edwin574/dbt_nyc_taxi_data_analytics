with green_data as (
    select * from {{ ref('_stg_green_trip_data') }}
),

yellow_data as (
    select * from {{ ref('_stg_yellow_trip_data') }}
),

trips_compined as(
    select * from green_data
    union all
    select * from yellow_data

)

select * from trips_compined

