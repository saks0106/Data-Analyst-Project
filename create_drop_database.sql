drop table if exists calendar;
create table if not exists calendar(
	date_id int,
	date date

);



drop table if exists inventory;
create table if not exists inventory(
	store_id int,
	product_id int, 
	stock_count int
);


drop table if exists products;
create table if not exists products(
	product_id int,
	product_name varchar, 
	product_category varchar,
	product_cost float,
	product_price float
);




drop table if exists sales;
create table if not exists sales(
	sales_id int,
	date date, 
	store_id int,
	product_id int,
	units int
);


drop table if exists stores;
create table if not exists stores(
	store_id int,
	store_name varchar, 
	store_city varchar,
	store_location varchar,
	store_open_date date
);