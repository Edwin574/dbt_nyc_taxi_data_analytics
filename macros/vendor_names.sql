{% macro get_vendor_name(vendor_id) %}

    case
        when {{ vendor_id }} = 1 then 'Creative Mobile Technologies, LLC'
        when {{ vendor_id }} = 2 then 'Curb Mobility, LLC'
        when {{ vendor_id }} = 6 then 'Myle Technologies Inc'
        when {{ vendor_id }} = 7 then 'Helix'
        else 'Unknown'
    end

{% endmacro %}