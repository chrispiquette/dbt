-- Write dbt singular test to try to catch cases where the age is negative

select * 
from {{ ref("users") }}
where age < 0