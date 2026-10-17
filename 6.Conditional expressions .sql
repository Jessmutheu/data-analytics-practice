-- 6.1	Use case to categorize orders as 'high' if o_totalprice > 10000, else 'low'.
select
    o_orderkey,
    o_totalprice,
    case
        when o_totalprice > 10000 then 'high'
        else 'low'
    end as price_category
from snowflake_sample_data.tpch_sf1.orders
limit 100
;
-- 6.2	Count how many orders end up in each category.

select
    case
        when o_totalprice > 10000 then 'high'
        else 'low'
    end as price_category,
    count(o_orderkey) as n_orders
from snowflake_sample_data.tpch_sf1.orders
group by price_category
order by n_orders
;
-- 6.3	Replace null customer names with 'Unknown' using coalesce.
select
    c_name,
    coalesce(c_name,'Unknown') as customer_name
from snowflake_sample_data.tpch_sf1.customer
;