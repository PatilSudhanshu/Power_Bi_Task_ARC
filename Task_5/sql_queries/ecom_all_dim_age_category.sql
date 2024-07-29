

------------create table dim_age_category

select distinct age from ecom_all;

-------

create table dim_age_category as
select distinct age from ecom_all;

--------------

select * from dim_age_category;

-------

alter table dim_age_category add column age_category varchar;

-----

update dim_age_category
set age_category = case 
	when age <= 18 then 'teen'
	when age <= 40 then 'adult'
	when age <= 60 then 'senior'
	else 'elder'
end;

-----------

alter table dim_age_category
add primary key(age)