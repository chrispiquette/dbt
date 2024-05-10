
-- Create a talbe using the `ref` function to select from other models, filtering only for 'US' data.

{{ config(materialized='table') }}

select *
from {{ ref('users') }}
where country_code = 'US'
