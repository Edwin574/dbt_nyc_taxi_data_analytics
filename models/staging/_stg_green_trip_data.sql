select 
cast(unique_row_id as bytes ) as row_id,
cast(VendorID as integer) as vendor_id,
cast(lpep_pickup_datetime as timestamp) as pickup_datetime,
cast(lpep_dropoff_datetime as timestamp) as dropoff_datetime,
cast(passenger_count as integer) as passenger_count,
cast(trip_distance as numeric) as trip_distance,
cast(RateCodeId as integer) as rate_code_id,
store_and_fwd_flag,
cast(PULocationID as integer) as pickup_location_id,
cast(DOLocationID as integer) as dropoff_location_id,
cast(payment_type as integer) as payment_type,
trip_type,
cast(fare_amount as numeric) as fare_amount,
cast(extra as numeric) as extra,
cast(mta_tax as numeric) as mta_tax,
cast(tip_amount as numeric) as tip_amount,
cast(tolls_amount as numeric) as tolls_amount,
cast(ehail_fee as numeric) as ehail_fee,
cast(improvement_surcharge as numeric) as improvement_surcharge,
cast(total_amount as numeric) as total_amount,
cast(congestion_surcharge as numeric) as congestion_surcharge

 from {{ source('taxi_data', 'green_tripdata') }}