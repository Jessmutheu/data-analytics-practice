-- 2.1	Count the number of orders and the total revenue per order priority. Show the priority with most orders first.

select  
    o_orderpriority,
    count(o_orderkey) as n_orders,
    sum(o_totalprice) as total_revenue
from snowflake_sample_data.tpch_sf1.orders
group by o_orderpriority
order by n_orders desc
;

-- 2.2	Calculate the average order value per order status (o_orderstatus).
select 
    o_orderstatus,
    avg(o_totalprice) as avg_order_value
from snowflake_sample_data.tpch_sf1.orders
group by o_orderstatus
;

-- 2.3	Count the number of customers per market segment, and show only segments with more than 30,000 customers.
select
    c_mktsegment,
    count(c_custkey) as n_customers
    
from snowflake_sample_data.tpch_sf1.customer
group by c_mktsegment
having n_customers > 30000
;
-- 2.4	Count the number of customers with a negative account balance per market segment.
select
    c_mktsegment,
    count(c_custkey) as n_customers_negative_balance
from snowflake_sample_data.tpch_sf1.customer
where c_acctbal < 0
group by c_mktsegment
;
