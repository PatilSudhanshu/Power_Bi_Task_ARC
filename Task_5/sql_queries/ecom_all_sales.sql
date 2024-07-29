

---------------------creating sales table----------------------------------------------------------------

select
	distinct order_line ,
	order_id ,
	order_date ,
	ship_date ,
	ship_mode ,
	customer_id ,
	product_id ,
	sales ,
	quantity ,
	discount ,
	profit 
from ecom_all;

-----------

create table sales as 
	select
		distinct order_line ,
		order_id ,
		order_date ,
		ship_date ,
		ship_mode ,
		customer_id ,
		product_id ,
		sales ,
		quantity ,
		discount ,
		profit 
	from ecom_all;

---------

select * from sales;