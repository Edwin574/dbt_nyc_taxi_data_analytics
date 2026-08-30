with taxi_zones as(
    select * from {{ ref('_stg_taxi_zone_lookup') }}
)

select * from taxi_zones