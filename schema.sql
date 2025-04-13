create database mysys;
use mysys;
create table customers(
customer_id int auto_increment primary key,
name varchar(100),
email varchar(100) unique,
phone varchar(10),
address Text,
created_at timestamp default current_timestamp
);
create table products(
product_id int auto_increment primary key,
name varchar(100),
description text,
price decimal(10,2),
stock_quantity int,
category varchar(50),
created_at timestamp default current_timestamp
);
select * from products;
create table orders(
order_id int auto_increment primary key,
customer_id int,
order_date timestamp default current_timestamp,
status varchar(20),
total_amount decimal(10,2),
foreign key (customer_id) references customers(customer_id)
);
create table order_items
(
order_items_id int auto_increment primary key,
order_id int,
product_id int,
quantity int,
price_each decimal(10,2),
foreign key(order_id) references orders(order_id),
foreign key(product_id) references products(product_id));
create table payments
(
payment_id int auto_increment primary key,
order_id int,
payment_date timestamp default current_timestamp,
payment_method varchar(50),
payment_status varchar(20),
amount_paid decimal(10,2),
foreign key(order_id) references orders(order_id)
);
