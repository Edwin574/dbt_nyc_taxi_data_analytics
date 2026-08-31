with trips as (
    select * from {{ ref('fct_trips') }}
),
zones as (
    select * from {{ ref('dim_zones') }}
),
monthly_zone_revenue as (
    select 
    date_trunc(date(trips.pickup_datetime),month) as rev_month,
    zones.zone,
    count(* ) as trips_count,
    sum(trips.total_amount) as revenue_amount
    
    from trips


    left join zones
    on trips.pickup_location_id=zones.location_id
    group by rev_month,zones.zone

)

select * from monthly_zone_revenue