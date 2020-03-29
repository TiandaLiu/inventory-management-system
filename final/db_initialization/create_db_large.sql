drop table if exists warehouse, store, staff, salarypayment, import, commodity, category, resource, sell, customer, address;

create table address(
	address_id varchar(10),
	country varchar(100),
	city varchar(100),
	street varchar(50),
	zipcode int,
	primary key(address_id)
);

create table warehouse(
	warehouse_id varchar(5),
	address_id varchar(5),
	primary key(warehouse_id),
	foreign key(address_id) references address
);

create table customer(
	customer_id varchar(5),
	customer_name varchar(50),
	customer_phone varchar(50),
	customer_email varchar(50),
	primary key(customer_id)
);

create table category(
	category_id varchar(20),
	category_name varchar(20),
	primary key(category_id)
);

create table store(
	store_id varchar(5),
	address_id varchar(5),
	warehouse_id varchar(5),
	primary key(store_id),
	foreign key(warehouse_id) references warehouse,
	foreign key(address_id) references address
);

create table staff(
	staff_id varchar(5),
	store_id varchar(5),
	staff_name varchar(50),
	staff_phone varchar(50),
	staff_ssn varchar(20),
	staff_salary int,
	primary key(staff_id),
	foreign key(store_id) references store
);

create table salarypayment(
	payment_id varchar(5),
	staff_id varchar(5),
	payment_amount int,
	payment_date varchar(20),
	primary key(payment_id),
	foreign key(staff_id) references staff
);

create table resource(
	resource_id varchar(5),
	address_id varchar(5),
	resource_name varchar(20),
	primary key(resource_id),
	foreign key(address_id) references address
);

create table commodity(
	commodity_id varchar(5),
	category_id varchar(5),
	resource_id varchar(5),
	warehouse_id varchar(5),
	single_price int,
	primary key(commodity_id),
	foreign key(category_id) references category,
	foreign key(resource_id) references resource,
	foreign key(warehouse_id) references warehouse
);

create table sell(
	sell_id varchar(5),
	customer_id varchar(5),
	commodity_id varchar(5),
	sell_amount int,
	sell_date varchar(20),
	primary key(sell_id),
	foreign key(customer_id) references customer,
	foreign key(commodity_id) references commodity
);

create table import(
	import_id varchar(5),
	resource_id varchar(5),
	commodity_id varchar(5),
	import_amount int,
	import_date varchar(20),
	primary key(import_id),
	foreign key(commodity_id) references commodity,
	foreign key(resource_id) references resource
);






