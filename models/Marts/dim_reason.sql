with header as (
    select 
    *
    from {{ ref('stg_sales_selesreasonheader') }}
)

,reason as(

  select 
    *
  from {{ ref('stg_sales_selesreason') }}

)

, joing as (

  select 

   row_number() over (order by header.salesreasonid) as reason_sk

  , header.salesorderid
  , reason.reasontype
  , reason.name_reason

  from  header
   join reason on header.salesreasonid = reason.salesreasonid
  
)
select * from joing
