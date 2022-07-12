with source_data as (
    
    select 

     businessentityid               
    , namestyle           
    , firstname               
    , lastname           
                
  
  from {{ source('person','person_person')}}
)

select * from source_data
