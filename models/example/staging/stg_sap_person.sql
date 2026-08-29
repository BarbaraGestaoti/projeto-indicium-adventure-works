with source as (
    select * from {{ source('adventure_works', 'person_person') }}
),

renamed as (
    select
        cast(businessentityid as int) as business_entity_id,
        cast(persontype as string) as person_type,
        cast(namestyle as boolean) as name_style,
        cast(title as string) as title,
        cast(firstname as string) as first_name,
        cast(middlename as string) as middle_name,
        cast(lastname as string) as last_name,
        cast(suffix as string) as suffix,
        cast(emailpromotion as int) as email_promotion,
        cast(rowguid as string) as row_guid,
        cast(modifieddate as timestamp) as modified_date
    from source
)

select * from renamed