# e-shopping data entry
use logbook;
insert into tbl_eshopping (
order_place_date, order_recv_date,
store_name, warranty_type,
item_name, item_desc,
item_cost,item_weight, item_shipping_fee)
values
("2020-11-11","2020-11-12","nongnong","no warranty",
"sony mdr-xb950bt bluetooth headphone",
"wireless headphone",
"45","280gm","3.50"),

("2020-12-12", "2020-11-14","big quality","local warranty",
"JBL Tune220TWS true wireless earbuds",
"wireless headphone",
"48.20","NA","4");

insert into tbl_eshopping (
order_place_date, order_recv_date,
store_name, warranty_type,
item_name, item_desc,
item_cost,item_weight, item_shipping_fee,item_discount)
values
("2020-12-12","2020-12-17","Ugreen","local warranty",
"HDMI cable",
"cable",
"8.49","NA","6","3.50");

insert into tbl_eshopping (
order_place_date, order_recv_date,
store_name, warranty_type,
item_name, item_desc,
item_cost, item_discount)
values
("2021-01-06","2021-01-15","choetech","local warranty",
"Micro USB Cable",
"cable",
"4.70","6");

insert into tbl_eshopping (
order_place_date, order_recv_date,
store_name, warranty_type,
item_name, item_desc,
item_cost, item_discount)
values
("2021-01-06","2021-01-15","choetech","local warranty",
"Micro USB Cable",
"cable",
"4.70","6");

insert into tbl_eshopping (
order_place_date, order_recv_date,
store_name, warranty_type,
item_name, item_desc,
item_cost, item_shipping_fee,item_discount)
values
("2021-01-10","2021-01-11",
"Xiaomi","international warranty", "1 year",
"Mi Power Bank 3 10000mAh",
"power_bank",
"35.90","4.50","6");

use logbook;
drop table if exists tbl_eshopping;
# create table electronic_item
create table tbl_eshopping(
shopid int not null auto_increment,
order_website varchar(20) default "lazada.com.my",
store_loc varchar(20) default "china",
order_place_date date, 
order_recv_date date,
store_name varchar(20), 
warranty_type varchar(30) default "local warranty", warranty_time varchar(30) default "NA", 
delivery_partner varchar(20) default "lex", 
item_name varchar(40), item_category varchar(20) default "electronic",
item_desc varchar(50), 
item_cost float default 0.0, item_weight varchar(10) default "NA",
item_discount float default 0.0,
item_shipping_fee float default 0.0, rating int default 0,
primary key(shopid));
