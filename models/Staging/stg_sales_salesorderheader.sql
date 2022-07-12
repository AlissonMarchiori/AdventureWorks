with source_data as (
    
    select 
    
    salesorderid                
    , orderdate               
    , shipdate        
    , status                
    , purchaseordernumber       
    , accountnumber       
    , customerid        
    , salespersonid       
    , territoryid       
    , billtoaddressid       
    , shiptoaddressid       
    , shipmethodid        
    , creditcardid        
    , subtotal        
    , taxamt        
    , freight       
    , totaldue        
          
        
  from {{ source('sales','sales_salesorderheader')}}
)

select * from source_data

