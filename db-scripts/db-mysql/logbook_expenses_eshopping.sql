# e-shopping data entry
insert into tbl_eshopping (
order_date, store_name, warranty,
item_name, item_desc,
item_cost,item_weight, item_shipping_fee)
values
("2020-11-11","nongnong","no warranty",
"sony mdr-xb950bt bluetooth headphone",
"wireless headphone",
"45","280gm","3.50");



use logbook;
drop table if exists tbl_eshopping;
# create table electronic_item
create table tbl_eshopping(
shopid int not null auto_increment,
order_website varchar(20) default "lazada.com.my",
store_loc varchar(20) default "china",
order_date date, store_name varchar(20), warranty varchar(30), 
delivery_partner varchar(20) default "lex", 
item_name varchar(40), item_category varchar(20) default "electronic",
item_desc varchar(50), 
item_cost float default 0.0, item_weight varchar(10),item_discount float default 0.0,
item_shipping_fee float default 0.0, rating int default 0,
primary key(shopid));
