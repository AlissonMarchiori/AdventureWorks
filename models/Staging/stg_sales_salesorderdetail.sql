with source_data as (
    
    select 
    
    salesorderid
    , salesorderdetailid
    , orderqty
    , productid
    , unitprice
    , unitpricediscount

  from {{ source('sales','sales_salesorderdetail')}}
)

select * from source_data

