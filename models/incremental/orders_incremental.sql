{{ config(materialized="incremental") }}


select *
from {{ source("jaffle_shop", "orders") }}

{% if is_incremental() %}

    where _etl_loaded_at > (select max(_etl_loaded_at) from {{ this }})

{% endif %}
