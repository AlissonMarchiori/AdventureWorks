with customer as (
  select 
  *
  from {{ref('stg_sales_customer')}}
)

,person as(
   
  select 
  * 
  from {{ref('stg_person_person')}}

)

, cliente as(

  select 

      row_number() over (order by customer.personid) as customer_sk
      
    , customer.personid
    , customer.customerid
    , customer.storeid
    , customer.territoryid
    , person.businessentityid
    , person.firstname 
    , person.lastname
  
  from person

    left join customer on person.businessentityid = customer.customerid
      
)

select * from cliente
