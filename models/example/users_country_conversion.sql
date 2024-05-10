
-- Create a table that inherits our 'users' data and using a Macro adds a column 
-- converting country_code to country name.

-- Table statement:
{{ config(materialized='table') }}

-- Inherit data from 'users' model and convert country code to country_name:
select *, {{ CountryCodeToCountryName('country_code') }} as country_name
from {{ ref('users') }}