with source_data as (
    
    select 

    salesorderid        
    , salesreasonid                     

  from {{ source('sales','sales_selesreasonheader')}}
)

select * from source_data

