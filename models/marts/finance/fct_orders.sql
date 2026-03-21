with 

source as (

    select * from {{ ref('stg_stripe__payments') }}

),

renamed as (

    select
        id as payment_id,
        order_id,
        customer_id,
        payment_method,
        payment_status,
        payment_amount,
        created as payment_created,
        _BATCHED_AT

    from source

    left join {{ ref('stg_jaffle_shop__orders') }} as orders using (order_id)

)

select * from renamed