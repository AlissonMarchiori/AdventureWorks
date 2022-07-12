  with source_data as (
    
  select 

  businessentityid        
               
  from {{ source('person','person_businessentity')}}
)

select * from source_data

