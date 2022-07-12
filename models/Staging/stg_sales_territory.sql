with source_data as (
    
    select 
    
       territoryid        
      , countryregioncode   
      , sales_territory.name as name_sales_territory
      , sales_territory.group as group_sales_territory
  from {{ source('sales','sales_territory')}}
)

select * from source_data

