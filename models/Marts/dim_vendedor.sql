with sales_person as (

    select          
     *  
    from {{ref('stg_sales_selesperson')}}
)

, empre as(
         
    select
      *     
    from {{ref('stg_employee')}}
)

, vendedor as(
    
        select

        row_number() over (order by empre.businessentityid) as seller_sk
        
        , empre.businessentityid 
        , sales_person.territoryid        
        , sales_person.salesquota       
        , sales_person.bonus        
        , sales_person.commissionpct                              
        , empre.jobtitle        
        , empre.maritalstatus       
        , empre.gender

        from sales_person
         
        left join empre on sales_person.businessentityid = empre.businessentityid

)

select * from vendedor

