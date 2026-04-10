
  
  
  create or replace view `barbara_dev`.`default`.`my_second_dbt_model`
  
  as (
    -- Use the `ref` function to select from other models

select *
from `barbara_dev`.`default`.`my_first_dbt_model`
where id = 1
  )
