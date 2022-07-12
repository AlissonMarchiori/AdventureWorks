with source_data as (
    
    select 

    salesreasonid       
    , `name` as name_reason        
    , reasontype                    

  from {{ source('sales','sales_selesreason')}}
)

select * from source_data
