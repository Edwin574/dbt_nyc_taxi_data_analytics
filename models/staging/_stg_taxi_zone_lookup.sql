select 
LocationID as location_id,
Borough,
Zone,
service_zone
from {{ source('taxi_data', 'taxi_zone_lookup') }}