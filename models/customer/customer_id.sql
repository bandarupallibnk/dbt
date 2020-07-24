{{ config(materialized='table')}}

with customer_data as (

select  nextval("cust_id")  as cust_id,
		first_name,
		last_name,
		city,
		state
		from "DBT".customers
)
select * from customer_data