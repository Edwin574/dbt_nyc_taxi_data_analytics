with all_trips as (
    select * from {{ ref('int_all_taxi_trips') }}
),

vendor as (
    select distinct vendor_id,
    {{get_vendor_name('vendor_id')}} as vendor_name
    from all_trips
)

select * from vendor