-- Basic DBT model of Users with their locations:

{{ config(materialized='table') }}

with source_data as (   /* Create Simple Table of Names and ID's to push to BigQuery */

    select 1 as id, 'charlie' as name, 19 as age, 'US' as country_code
    union all
    select 2 as id, 'bobby' as name, 22 as age, 'US' as country_code
    union all
    select 3 as id, 'tina' as name, 55 as age, 'US' as country_code
    union all
    select 4 as id, 'tommy' as name, 42 as age, 'CA' as country_code
    union all
    select 5 as id, 'crystal' as name, 31 as age, 'MX' as country_code
)

select *
from source_data
