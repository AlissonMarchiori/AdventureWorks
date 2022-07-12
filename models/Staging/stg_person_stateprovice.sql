with source_data as (
    
    select 

    stateprovinceid     
    ,stateprovincecode        
    , countryregioncode       
    , isonlystateprovinceflag       
    , `name` as name_stateprovice 
    , territoryid     

        
  from {{ source('person','person_stateprovice')}}
)

select * from source_data
