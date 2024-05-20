with source as(
    select *
    from raw.stripe.payment ),
renamed as(
    select 
     id as payment_id,
     orderid,
     amount / 100  --cents to dollars
    from source
) select * from renamed
