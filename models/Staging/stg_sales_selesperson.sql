with source_data as (
    
    select 

     businessentityid       
    , territoryid       
    , salesquota        
    , bonus       
    , commissionpct             
    
  from {{ source('sales','sales_selesperson')}}
)

select * from source_data
