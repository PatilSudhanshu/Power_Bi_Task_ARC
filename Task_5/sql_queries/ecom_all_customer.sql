

---------------------create customer table--------------------------

select 
	distinct customer_id ,
	customer_name ,
	segment ,
	age ,
	country ,
	city ,
	state ,
	postal_code ,
	region
from ecom_all;

------

create table customer as 
	select 
		distinct customer_id ,
		customer_name ,
		segment ,
		age ,
		country ,
		city ,
		state ,
		postal_code ,
		region
	from ecom_all;

------

select * from customer;

-------

alter table customer
add constraint pk_customer_id primary key (customer_id);

-----

alter table customer
add constraint fk_age foreign key(age) references dim_age_category(age);

----

alter table customer
add constraint fk_postal_code foreign key (postal_code) references regions(postal_code);

----

alter table customer 
drop column country,
drop column city,
drop column state,
drop column region;