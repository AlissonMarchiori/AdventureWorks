with source_data as (
    
  select 
     addressid              
    , city        
    , stateprovinceid             
  from {{ source('person','person_adress')}}
)

select * from source_data
