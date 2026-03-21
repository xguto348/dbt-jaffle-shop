    select
        ID,
        ORDERID as order_id,
        PAYMENTMETHOD as payment_method,
        STATUS as payment_status,
        AMOUNT as payment_amount,
        CREATED,
        _BATCHED_AT

    from raw.stripe.payment