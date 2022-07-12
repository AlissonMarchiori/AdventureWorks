with source_data as (
    
    select 

    countryregioncode       
    , `name`  name_countryregion  
      
  from {{ source('person','person_contrryregion')}}
)

select * from source_data
