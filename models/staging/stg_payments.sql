with source as(
    select *
    from {{source('stripe','payment')}} ),
renamed as(
    select 
     id as payment_id,
     orderid,
     amount / 100  --cents to dollars
    from source
) select * from renamed
