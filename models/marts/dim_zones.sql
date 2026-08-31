with taxi_zones as(
    select * from {{ ref('stg_taxi_zone_lookup') }}
)

select * from taxi_zones