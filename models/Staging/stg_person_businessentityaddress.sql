with source_data as (
    
    select 

    businessentityid        
   , addressid        
   , addresstypeid          
  from {{ source('person','person_businessentityaddress')}}
)

select * from source_data
