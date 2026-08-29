with source as (
    select * from {{ source('adventure_works', 'sales_salesperson') }}
),

renamed as (
    select
        cast(businessentityid as int) as business_entity_id,
        cast(territoryid as int) as territory_id,
        cast(salesquota as numeric) as sales_quota,
        cast(bonus as numeric) as bonus,
        cast(commissionpct as numeric) as commission_pct,
        cast(salesytd as numeric) as sales_ytd,
        cast(saleslastyear as numeric) as sales_last_year,
        cast(rowguid as string) as row_guid,
        cast(modifieddate as timestamp) as modified_date
    from source
)

select * from renamed