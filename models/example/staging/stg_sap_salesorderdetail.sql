with source as (
    select * from {{ source('adventure_works', 'sales_salesorderdetail') }}
),

renamed as (
    select
        cast(salesorderid as int) as sales_order_id,
        cast(salesorderdetailid as int) as sales_order_detail_id,
        cast(carriertrackingnumber as string) as carrier_tracking_number,
        cast(orderqty as int) as order_qty,
        cast(productid as int) as product_id,
        cast(specialofferid as int) as special_offer_id,
        cast(unitprice as numeric) as unit_price,
        cast(unitpricediscount as numeric) as unit_price_discount,
        cast(rowguid as string) as row_guid,
        cast(modifieddate as timestamp) as modified_date
    from source
)

select * from renamed