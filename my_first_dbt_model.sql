
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (   /* Create Simple Table of Names and ID's to push to BigQuery */

    select 1 as id, 'charlie' as name
    union all
    select null as id, 'bobby' as name
    union all
    select 2 as id, 'tina' as name
    union all
    select 3 as id, 'tommmy' as name
    union all
    select 4 as id, 'crystal' as name
)

select *
from source_data
