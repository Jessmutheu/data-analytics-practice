-- 1.1	Count the total number of orders.

select
    count(o_orderkey) as total_orders
from snowflake_sample_data.tpch_sf1.orders
;

-- 1.2	Find the total order amount (o_totalprice).
select
    sum(o_totalprice) as total_order_amount
from snowflake_sample_data.tpch_sf1.orders
;
-- 1.3	Calculate the average order amount.
-- 1.4	Find the minimum and maximum order amount.
-- 1.5	Put all of it into one single query.

select
    count(o_orderkey) as total_orders,
    sum(o_totalprice) as total_order_amount,
    avg(o_totalprice) as avg_order_amount,
    min(o_totalprice) as min_order_amount,
    max(o_totalprice) as max_order_amount

from snowflake_sample_data.tpch_sf1.orders
;