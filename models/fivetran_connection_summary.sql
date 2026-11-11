-- Counts the connections Fivetran has synced into BigQuery and stamps the build time,
-- so you can check the model ran after the Fivetran sync.
select
    count(*) as connection_count,
    current_timestamp() as built_at
from {{ source('fivetran_metadata', 'connection') }}
