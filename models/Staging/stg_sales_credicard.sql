with source_data as (
    
    select 
    
     creditcardid       
    , cardtype                            

  from {{ source('sales','sales_credicard')}}
)

select * from source_data  
