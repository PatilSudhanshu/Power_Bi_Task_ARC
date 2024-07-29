-------------create sub_dim_product table--------------

select
	distinct category ,
	sub_category  
from ecom_all;

-------

create table sub_dim_product as
	select
	distinct category ,
	sub_category  
from ecom_all;

--------

select * from sub_dim_product;

----

alter table sub_dim_product add column category_id serial;

-------

alter table sub_dim_product add constraint category_pk primary key (category_id);


