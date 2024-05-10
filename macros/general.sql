-- General macros for dbt_learning_project

-- Country Code to Country Name Conversion 
{% macro CountryCodeToCountryName(column_name) %}
    
    case
        when {{column_name}} = 'US' then 'United States of America'
        when {{column_name}} = 'CA' then 'Canada'
        when {{column_name}} = 'MX' then 'Mexico'
        else {{column_name}}
    end

{% endmacro %}