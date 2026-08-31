with trip_details as (

    select
        row_id as trip_id,
        vendor_id,
        pickup_location_id,
        dropoff_location_id,
        trip_type,
        payment_type,
        passenger_count,
        trip_distance,
        fare_amount,
        extra,
        mta_tax,
        tip_amount,
        tolls_amount,
        ehail_fee,
        improvement_surcharge,
        congestion_surcharge,
        total_amount

        -- row_number() over (
        --     partition by row_id
        --     order by pickup_datetime
        -- ) as row_num


    from {{ ref('int_all_taxi_trips') }}

)

select *
from trip_details
-- where row_num = 1