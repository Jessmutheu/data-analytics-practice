-- 3.1	Round the order amount to 2 decimal places.
select
   o_orderkey,
   round(o_totalprice,2) as rounded_price
from snowflake_sample_data.tpch_sf1.orders
;

-- 3.2	Take the ceiling of the order amount (rounds a number up to the nearest integer).
-- 3.3	Take the floor of the order amount (rounds a number down to the nearest integer).
select
    o_orderkey,
    ceil(o_totalprice) as ceil_order_amount,
    floor(o_totalprice) as floor_order_amount
from snowflake_sample_data.tpch_sf1.orders
;
-- 3.4	Use round together with an aggregate: the average order value per order status, rounded to 2 decimals.
select
    o_orderstatus,
    round(avg(o_totalprice),2) as avg_order_value
from snowflake_sample_data.tpch_sf1.orders
group by o_orderstatus
;
