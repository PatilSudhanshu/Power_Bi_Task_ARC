
----------creating dim_product table-----------

select e.product_id, e.product_name, s.category_id from ecom_all e
inner join sub_dim_product s
on e.sub_category = s.sub_category;


select * from 
(select e.product_id, e.product_name, s.category_id from ecom_all e
inner join sub_dim_product s
on e.sub_category = s.sub_category)
where product_id = 'FUR-BO-10000112' 

-----
	
create table dim_product as 
select e.product_id, e.product_name, s.category_id from ecom_all e
inner join sub_dim_product s
on e.sub_category = s.sub_category;

------
select * from dim_product;

------

alter table dim_product
add constraint fk_category_id foreign key (category_id) references sub_dim_product(category_id);