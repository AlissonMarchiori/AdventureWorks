with source_data as (
    
    select 
         productid              
        , `name` as product_name                
        , productnumber             
        , makeflag              
        , finishedgoodsflag             
        , color             
        , safetystocklevel              
        , reorderpoint              
        , standardcost              
        , listprice             
        , `size` as product_size        
        , sizeunitmeasurecode               
        , weightunitmeasurecode             
        , `weight` as product_weight        

 from {{ source('products','production_product') }}
)

select * from source_data

