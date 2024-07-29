--	select * from sales  s 	
--	inner join customer  c
--	on s.customer_id = c.customer_id
--	inner join product  p
--	on s.product_id = p.product_id

-------------------------creating ecom_all table------------------------------------------------------------------

create table ecom_all (
	order_line int,
	order_id varchar,
	order_date varchar,
	ship_date varchar,
	ship_mode varchar,
	customer_id varchar,
	product_id varchar,
	sales double precision,
	quantity int,
	discount double precision,
	profit double precision,
	customer_name varchar,
	segment varchar,
	age int,
	country varchar,
	city varchar,
	state varchar,
	postal_code int,
	region varchar,
	category varchar,
	sub_category varchar,
	product_name varchar
);
	
---------
	
copy ecom_all from 'D:\Sudhanshu\ARC_DA\POWER_BI\ecomm_practice\ecom_all_data_updated.csv' Delimiter ',' csv header;
	
--------
	
select * from ecom_all;

----------------------alter order_date & ship_date datatype-----------------------------------------------------
	
alter table ecom_all
alter column order_date type date using to_date(order_date, 'MM/DD/YYYY');

-----------

alter table ecom_all
alter column ship_date type date using to_date(ship_date, 'MM/DD/YYYY');






