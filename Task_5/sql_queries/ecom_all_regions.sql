

-------------create region table------------

select 
	distinct postal_code ,
	city ,
	state ,
	region ,
	country 
from customer;
	
-----
	
create table regions as 
	select 
	distinct postal_code ,
	city ,
	state ,
	region ,
	country 
from customer;

delete from regions where city = 'Encinitas'
-------

select distinct postal_code from regions;
select * from regions where postal_code = '92024'
---------

alter table regions add primary key(postal_code);

select * from regions;