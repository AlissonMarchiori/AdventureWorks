 with produto as(
    select 
    *
    from {{ref('stg_products')}}
)

, orderdetail as(
    select

       row_number() over (order by produto.productid) as product_sk
    , orderdetail.orderqty
    , orderdetail.unitprice
    , orderqty*unitprice as amount
    , produto.productid
    , product_name
    , orderdetail.salesorderid
    , produto.productnumber
    , produto.safetystocklevel
    , produto.standardcost
    , produto.listprice

    from {{ref('stg_sales_salesorderdetail')}} orderdetail
        left join produto on orderdetail.productid = produto.productid
            
)       

select * from orderdetail
