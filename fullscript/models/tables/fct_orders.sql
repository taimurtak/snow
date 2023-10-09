{{
    config(
        materialized = 'table'
    )
}}
with orders as (
    
    select * from {{ ref('orders') }}

),
orders_items as (
    
    select * from {{ ref('orders_items') }}

),
order_item_summary as (

    select 
        o.order_key,
        sum(o.gross_item_sales_amount) as gross_item_sales_amount,
        sum(o.item_discount_amount) as item_discount_amount,
        sum(o.item_tax_amount) as item_tax_amount,
        sum(o.net_item_sales_amount) as net_item_sales_amount
    from orders_items o
    group by
        1
)


select 
    o.order_key, 
    o.order_date,
    o.customer_key,
    o.order_status_code,
    o.order_priority_code,             
    round(s.gross_item_sales_amount,2) as gross_item_sales_amount,
    round(s.item_discount_amount,2) as item_discount_amount,
    round(s.item_tax_amount,2) as item_tax_amount,
    round(s.net_item_sales_amount,2) as net_item_sales_amount
from
    orders o
    join order_item_summary s on o.order_key = s.order_key

