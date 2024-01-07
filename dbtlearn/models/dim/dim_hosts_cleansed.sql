WITH src_hosts AS (
    SELECT * FROM {{ ref ("src_hosts") }}
)

SELECT
    