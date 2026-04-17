with source_data as (
    select *
    from {{ source('sap_adw', 'address') }}
)

select *
from source_data