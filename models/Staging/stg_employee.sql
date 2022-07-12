with source_data as (
    
    select 
 businessentityid                                               
, jobtitle                          
, maritalstatus             
, gender                
, hiredate                                      
            
  from {{ source('employee','humanresources_employee')}}
)

select * from source_data



