-- 4.1	Convert all customer names to uppercase.
select
    c_name,
    upper(c_name) as upper_name,
    lower(c_name) as lower_name
from snowflake_sample_data.tpch_sf1.customer
;

-- 4.2	Convert all customer names to lowercase.
-- 4.3	Concatenate customer name with c_custkey.
select
    c_name,
    c_custkey,
    concat(c_name,c_custkey) as name_with_id

from snowflake_sample_data.tpch_sf1.customer
;
-- 4.4	Get the length of c_comment.
select
    c_comment,
    length(c_comment) as comment_length
from snowflake_sample_data.tpch_sf1.customer
limit 100
;

-- 4.5	Extract the first 5 characters and last 3 characters of customer names.
select
    c_name,
    left(c_name, 5) as first_5,
    right(c_name, 3) as last_3
from snowflake_sample_data.tpch_sf1.customer
;
-- 4.6	Get only the first word from c_comment.
select
    c_comment,
    split_part(c_comment,' ', 1)
from snowflake_sample_data.tpch_sf1.customer
;
-- 4.7	Retrieve lineitems where l_comment has the word 'foxes'. Come up with two different ways of doing this.
select *,
    l_comment

from snowflake_sample_data.tpch_sf1.lineitem
where l_comment like '%foxes%'
;
select *,
    l_comment

from snowflake_sample_data.tpch_sf1.lineitem
where contains(l_comment, 'foxes')
;

-- 4.8	Get lineitems where the comment starts with 'foxes'. Come up with two different ways of doing this.
select *,
    l_comment

from snowflake_sample_data.tpch_sf1.lineitem
where l_comment like 'foxes%'
;
select *,
    l_comment

from snowflake_sample_data.tpch_sf1.lineitem
where startswith(l_comment,'foxes')
;
-- 4.9	Get lineitems where the comment ends with 'foxes'. Come up with two different ways of doing this.

