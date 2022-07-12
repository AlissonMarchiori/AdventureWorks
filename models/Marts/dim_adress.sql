with adress as(
   select
   *
   from {{ref('stg_person_adress')}} 
)

, stateprovince as(

   select
   *  
   from {{ref('stg_person_stateprovice')}}
)

, country as(
    
   select
   *
   from {{ref('stg_person_contrryregion')}}

)

, fulladress as(

   select

      row_number() over (order by adress.addressid) as adress_sk
      ,stateprovince.territoryid
      ,adress.stateprovinceid
      ,adress.addressid
      ,adress.city
      ,stateprovince.name_stateprovice
      ,country.name_countryregion
      ,country.countryregioncode
      
   from adress
      left join stateprovince on adress.stateprovinceid = stateprovince.stateprovinceid
         left join country on stateprovince.countryregioncode = country.countryregioncode  
)

select  * FROM fulladress

