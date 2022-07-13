with orderdetail as(
    select
    *
    from {{ref('dim_product')}}

)

,cliente as(
    select
    *
    from {{ref('dim_cliente')}}
) 

, adress as(
    select
    *
    from {{ref('dim_adress')}}
)

, reason as(
    select 
    *
    from {{ref('dim_reason')}}
)

, card as(
    select
    *
    from {{ref('stg_sales_credicard')}}
)

, seller as(
    select
    *
    from {{ref('dim_vendedor')}}
)

, orderheader as (

    select
        adress.adress_sk
        , cliente.customer_sk
        , orderdetail.product_sk
        , seller.seller_sk
        , reason.reason_sk
        , card.cardtype
        , orderheader.salesorderid
        , orderheader.subtotal        
        , orderheader.taxamt        
        , orderheader.freight       
        , orderheader.totaldue
        , orderheader.orderdate

    from {{ref ('stg_sales_salesorderheader')}} orderheader
       left join reason on orderheader.salesorderid = reason.salesorderid
         left join orderdetail on orderheader.salesorderid = orderdetail.salesorderid
                   left join cliente on orderheader.customerid = cliente.customerid
                    left join adress on orderheader.billtoaddressid = adress.addressid
             left join seller on orderheader.salespersonid = seller.businessentityid
         left join card on orderheader.creditcardid = card.creditcardid
)

select * from orderheader
