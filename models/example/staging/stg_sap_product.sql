with source as (
    select * from {{ source('adventure_works', 'production_product') }}
),

renamed as (
    select
        cast(productid as int) as product_id,
        cast(name as string) as product_name,
        cast(productnumber as string) as product_number,
        cast(makeflag as boolean) as make_flag,
        cast(finishedgoodsflag as boolean) as finished_goods_flag,
        cast(color as string) as color,
        cast(safetystocklevel as int) as safety_stock_level,
        cast(reorderpoint as int) as reorder_point,
        cast(standardcost as numeric) as standard_cost,
        cast(listprice as numeric) as list_price,
        cast(size as string) as size,
        cast(sizeunitmeasurecode as string) as size_unit_measure_code,
        cast(weightunitmeasurecode as string) as weight_unit_measure_code,
        cast(weight as numeric) as weight,
        cast(daystomanufacture as int) as days_to_manufacture,
        cast(productline as string) as product_line,
        cast(class as string) as class,
        cast(style as string) as style,
        cast(productsubcategoryid as int) as product_subcategory_id,
        cast(productmodelid as int) as product_model_id,
        cast(sellstartdate as timestamp) as sell_start_date,
        cast(sellenddate as timestamp) as sell_end_date,
        cast(discontinueddate as timestamp) as discontinued_date,
        cast(rowguid as string) as row_guid,
        cast(modifieddate as timestamp) as modified_date
    from source
)

select * from renamed