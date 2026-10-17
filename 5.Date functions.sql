-- 5.1	Show the current timestamp.
select
    current_timestamp() as now
from snowflake_sample_data.tpch_sf1.orders
;

-- 5.2	Extract the year and the month from the order date.
select
    o_orderkey,
    o_orderdate,
    year(o_orderdate) as year,
    month(o_orderdate) as month
from snowflake_sample_data.tpch_sf1.orders
;
-- 5.3	Truncate the order date to the month.
select
    o_orderkey,
    o_orderdate,
    date_trunc(month, o_orderdate) as month_start
from snowflake_sample_data.tpch_sf1.orders
limit 100
;
-- 5.4	Count the number of orders and the total revenue per year.
select
    year(o_orderdate) as order_year,
    count(o_orderkey) as n_orders,
    sum(o_totalprice) as revenue
from snowflake_sample_data.tpch_sf1.orders
group by order_year
order by order_year
;
-- 5.5	Count the number of orders and the total revenue per month in 1995.
select
    month(o_orderdate) as order_month,
    count(o_orderkey) as n_orders,
    sum(o_totalprice) as revenue
from snowflake_sample_data.tpch_sf1.orders
where year(o_orderdate) = 1995
group by order_month
order by order_month
;
