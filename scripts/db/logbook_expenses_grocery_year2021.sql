# GROCERY SHOPPING DATA LOGBOOK FOR YEAR 2021

use logbook;
alter table tbl_grocery modify item_desc varchar(150);
# change default value for store name, location
alter table tbl_grocery modify column store_name varchar(20) not null default 'MyDin';
alter table tbl_grocery modify column store_loc varchar(30) not null default 'Seberang Perai';

# May 2021 - Grocery Shopping data
use logbook;
desc logbook.tbl_grocery;

# Grocery shopping data for 16-May-2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-5-16", "local vegetable","green capsicum 3pcs",3.80),
("2021-5-16", "local vegetable","baby yam",7.02),
("2021-5-16", "local vegetable","tomato",2.75),
("2021-5-16", "local vegetable","red onion",3),
("2021-5-16", "local vegetable","potato (russet)",2.89),
("2021-5-16", "local vegetable","garlic",1.44),
("2021-5-16", "local vegetable","shittake mushrooms",4.99),
("2021-5-16", "local vegetable","green chilli",0.88),
("2021-5-16", "local vegetable","old ginger",1.12),
("2021-5-16", "local vegetable","loose carrots",3.72),
("2021-5-16", "dry produce","dry matar",2.71),
("2021-5-16", "dry produce","black split daal 0.221gm",1.43),
("2021-5-16", "dry produce","poha (malay-aval) 0.353gm",2.34),
("2021-5-16", "dry produce","pilsbury aata 1kg",4.30),
("2021-5-16", "snack","samudra banana cake",4),
("2021-5-16", "toiletries","fax bar soap 4x70gm",2.10);

# Grocery shopping data for 7-May-2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-5-7", "local vegetable","fried taufu (key brand)",2.30),
("2021-5-7", "local vegetable","green capsicum 3pcs",3.78),
("2021-5-7", "local vegetable","baby yam",6.02),
("2021-5-7", "local vegetable","tomato",5.20),
("2021-5-7", "local vegetable","red onion",2.02),
("2021-5-7", "local vegetable","potato (russet)",4.45),
("2021-5-7", "local vegetable","garlic",1.08),
("2021-5-7", "local vegetable","shittake mushrooms",4.99),
("2021-5-7", "dry produce","loose soyamate",1.38),
("2021-5-7", "dry produce","dry matar",4.45),
("2021-5-7", "dry produce","pilsbury aata 2kg",8.35),
("2021-5-7", "snack","samudra banana cake",4.30),
("2021-5-7", "snack","nora peanut sheet",5.50),
("2021-5-7", "cooking oil","Basso Sunflower Oil 1L",9.80),
("2021-5-7", "tea","Lipton green tea 25pack",6.60),
("2021-5-7", "coffee","Nescafe 3in1 orig 19g x 28 (discount)",10.89),
("2021-5-7", "laundry","touch diswasher iron net",0.90);


# Grocery shopping data for 1-May-2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-5-1", "local vegetable","fried taufu",2.05),
("2021-5-1", "local vegetable","red chilli",0.60),
("2021-5-1", "local vegetable","baby yam",4.54),
("2021-5-1", "local vegetable","tomato",1.21),
("2021-5-1", "local vegetable","red onion",0.82),
("2021-5-1", "local vegetable","potato",1.32),
("2021-5-1", "biscuit","munchy dark chocolate",9.90),
("2021-5-1", "dry produce","samudra banana cake",4.30),
("2021-5-1", "dry produce","pilsbury aata 1kg",4.30);

# April 2021 - Grocery Shopping data
use logbook;
desc logbook.tbl_grocery;
# Grocery shopping data for 17-April-2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-4-17", "local vegetable","cucumber",3.81),
("2021-4-17", "spices","baba's turmeric powder",2.45),
("2021-4-17", "local vegetable","baby yam",6.45),
("2021-4-17", "local vegetable","green chilli",0.85),
("2021-4-17", "dry produce","soyabean (open)",2.35),
("2021-4-17", "dry produce","cholle (kidney bean)",4.45),
("2021-4-17", "coffee","kapal white coffee wit chocolate 20pc",7.90);

# Grocery shopping data for 9-April-2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values ("2021-4-9", "local vegetable","shittake mushroom",4.99),
("2021-4-9", "local vegetable","french bean",1.73),
("2021-4-9", "dry produce","fried tofu",1.90),
("2021-4-9", "local vegetable","broccoli",3.29),
("2021-4-9", "local vegetable","russet potato",6),
("2021-4-9", "local vegetable","cucumber",7.24),
("2021-4-9", "dry produce","samudra banana cake",4.30),
("2021-4-9", "fruit","apple-red",7.99),
("2021-4-9", "local vegetable","carrot",1.49),
("2021-4-9", "local vegetable","red onion",4.75),
("2021-4-9", "dry produce","dried matar",1.49),
("2021-4-9", "spices","thalipu (zeera mix)",0.95),
("2021-4-9", "dry produce","kuih cake",5.50);


# Grocery shopping data for 4/April/2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values ("2021-4-4", "local vegetable","green chilli",1.24),
("2021-4-4", "local vegetable","french bean",1.73),
("2021-4-4", "dry produce","fried tofu",1.90),
("2021-4-4", "dry produce","pilsbury aata 5kg",20.80),
("2021-4-4", "local vegetable","brinjal",2.26),
("2021-4-4", "local vegetable","broccoli",2.99),
("2021-4-4", "local vegetable","tomato",2.39);

# Grocery shopping data for 2/April/2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values ("2021-4-2", "tobacco","marlboro light cigratte",17.40);

# Grocery Shopping data March 2021
use logbook;

# add grocery shopping data for 27/3/2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values ("2021-3-27", "local vegetable","baby yam",2.21),
("2021-3-27", "local vegetable","tomamto",3.47),
("2021-3-27", "local vegetable","cucumber",6.06),
("2021-3-27", "dry produce","banana cake",4.30),
("2021-3-27", "fruit","apple-green",6.49),
("2021-3-27", "dry produce","salt",0.30),
("2021-3-27", "local vegetable","shittake mushroom",4.99),
("2021-3-27", "local vegetable","carrot",2.18),
("2021-3-27", "local vegetable","red onion",2.10),
("2020-3-27","local vegetable","white garlic",1.27),
("2021-3-27", "frozen meat","Wise choice chicken nugget 1kg",12.40);


# add grocery shopping data for 20/3/2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values ("2021-3-20", "local vegetable","brinjal",2.85),
("2021-3-20", "local vegetable","tomamto",3.35),
("2021-3-20", "local vegetable","green chilli",1.10),
("2021-3-20", "local vegetable","curry leaf",1.09),
("2021-3-20", "local vegetable","indian bean",2.44),
("2021-3-20", "local vegetable","cucumber",4.61),
("2021-3-20", "dry produce","dry red chilli",1.32),
("2021-3-20", "dry produce","groundnut",3.95),
("2021-3-20", "dry produce","banana cake",4),
("2021-3-20", "dry produce","fried tofu",1.90),
("2021-3-20", "fruit","apple",6.90),
("2021-3-20", "laundry","touch dishwashing liquid",3.90);

# add grocery shopping data for 17/3/2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-3-17", "local vegetable","carrot",3.25),
("2021-3-17", "local vegetable","shittake mushroom",9.98),
("2021-3-17", "local vegetable","small bittergourd",3.54),
("2021-3-17", "dry produce","pilsbury aata 5kg",20.80),
("2021-3-17", "local vegetable","russet potato",5.71),
("2021-3-17", "toiletries","toilet brush",3.20);

# add grocery shopping data for 14/3/2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-3-14", "dairy produce","yeo yogurt",7.80),
("2021-3-14", "local vegetable","shittake mushroom",4.99),
("2021-3-14", "local vegetable","cucumber",5.65),
("2021-3-14", "fruit","top red apple",6.90),
("2021-3-14", "coffee","aik cheong 3in1 30pack",7.75),
("2021-3-14", "toiletries","toouch metal dishwasher",1.80),
("2021-3-14", "local vegetable","green chilli",1),
("2021-3-14", "local vegetable","french beans",3.85),
("2021-3-14", "tea","lipton green tea 50 bags",11.95),
("2021-3-14", "dairy produce","fried tofu",1.90),
("2021-3-14", "spices","baba chilli powder",0.90),
("2021-3-14", "spices","faiza meat powder",3.85),
("2021-3-14", "spices","suria corriander powder",1.70);

# add grocery shopping data for 08/3/2021
use logbook;
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-3-8", "dairy produce","yeo yogurt",7.80),
("2021-3-8", "local vegetable","shittake mushroom",4.99),
("2021-3-8", "local vegetable","cucumber",3.61),
("2021-3-8", "fruit","top red apple",6.90),
("2021-3-8", "local vegetable","red onion",1.88),
("2021-3-8", "local vegetable","local potato",1.03),
("2021-3-8", "local vegetable","local tomamto",4.43),
("2021-3-8", "frozen meat","ayam chicken drummet 850gm",17.90),
("2021-3-8", "frozen meat","suria fried fish balls 300gm",5.95);

# add grocery shopping data for 04/3/2021
use logbook;
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-3-4", "dairy produce","yeo yogurt",7.80),
("2021-3-4", "local vegetable","baby yam",2.22),
("2021-3-4", "local vegetable","broccoli",2.99),
("2021-3-4", "local vegetable","local tomamto",8.68),
("2021-3-4", "local vegetable","mint leaves",1.09),
("2021-3-4", "sauce","puteri chilli sauce",2.10),
("2021-3-4", "spices","local salt",0.20);

# show data for march 2021
select * from tbl_grocery where year(shop_date)=2021;

# Feb 2021 - Grocery Shopping data
use logbook;
desc logbook.tbl_grocery;
# 3-Feb-2021 grocery shopping data
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-2-3", "local vegetable","red onion",2.03),
("2021-2-3", "local vegetable","small bitter gourd",3.88),
("2021-2-3", "local vegetable","french bean",5.96),
("2021-2-3", "local vegetable","fried taufu",2.49),
("2021-2-3", "local vegetable","tomato",4.20),
("2021-2-3", "local vegetable","cucumber",2.03),
("2021-2-3", "local vegetable","green mint leaves",1.90),
("2021-2-3", "snack","nora peanut sheet",4.90),
("2021-2-3", "dry produce","cholle",4.45),
("2021-2-3", "dry produce","paraboiled rice 1kg",5.20),
("2021-2-3", "dry produce","bread",2.90),
("2021-2-3", "dry produce","pilsbury aata 5kg",20.80);

# 10-Feb-2021 grocery shopping data
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-2-10", "local vegetable","red onion",3.22),
("2021-2-10", "local vegetable","small bitter gourd",3.99),
("2021-2-10", "local vegetable","green chilli",1.40),
("2021-2-10", "local vegetable","fried taufu",2.49),
("2021-2-10", "local vegetable","tomato",4.78),
("2021-2-10", "local vegetable","cucumber",2.91),
("2021-2-10", "local vegetable","green mint leaves",1.89),
("2021-2-10", "dry produce","rasaku coconut milk 6pcs",13.20),
("2021-2-10", "dry produce","samudra banana cake",4.30),
("2021-2-10", "dairy produce","yeo yogurt",7.80);

# 17-Feb-2021 grocery shopping data
insert into tbl_grocery (shop_date, store_name,item_type, item_desc,item_cost)
values
("2021-2-17", "TescoExtra", "local vegetable","yellow onion",3),
("2021-2-17", "TescoExtra", "local vegetable","fried taufu",4.99),
("2021-2-17", "TescoExtra", "local vegetable","PP kailan",2.99),
("2021-2-17", "TescoExtra", "local vegetable","green chilli",2.21),
("2021-2-17", "TescoExtra", "local vegetable","french bean",7.50),
("2021-2-17", "TescoExtra", "local vegetable","radish (mooli)",5.99),
("2021-2-17", "TescoExtra", "tea","tesco teh Tarik 15pack",8.99),
("2021-2-17", "TescoExtra", "frozen meat","Farm best chicken nugget 800gm",11.50),
("2021-2-17", "TescoExtra", "biscuit","Tesco sugar biscuit",3.49),
("2021-2-17", "TescoExtra", "dry produce","yellow daal",1.36),
("2021-2-17", "TescoExtra", "dry produce","green moong daal",3.16),
("2021-2-17", "TescoExtra", "dairy produce","yeo yogurt",7.80),
("2021-2-17", "TescoExtra", "liquor","tiger beer cans (x6)",34.90);

# 22-Feb-2021 grocery shopping data
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-2-22", "local vegetable","broccoli",3.89),
("2021-2-22", "local vegetable","PP kailan (chinese broccoli)",4.39),
("2021-2-22", "local vegetable","long brinjal 2pcs",8.31),
("2021-2-22", "local vegetable","grey oyster mushroom 100gm",3.29),
("2021-2-22", "sweets","toffee",4),
("2021-2-22", "local vegetable","cucumber",4.91),
("2021-2-22", "dry produce","rasaku coconut milk 6pcs",13.20),
("2021-2-22", "dry produce","samudra banana cake",4),
("2021-2-22", "dairy produce","yeo yogurt",7.80);

# 25-Feb-2021 grocery shopping data
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-2-25", "local vegetable","green chilli",0.84),
("2021-2-25", "local vegetable","onion",1.73),
("2021-2-25", "local vegetable","potato",1.22),
("2021-2-25", "local vegetable","small bitter gourd",2.68),
("2021-2-25", "local vegetable","grey oyster mushroom 100gm",3.29),
("2021-2-25", "local vegetable","shittake mushroom",4.99),
("2021-2-25", "local vegetable","cucumber",6.32),
("2021-2-25", "local vegetable","old ginger",1.44),
("2021-2-25", "local vegetable","curry leaf",0.95),
("2021-2-25", "local vegetable","garlic",1.42),
("2021-2-25", "dry produce","enrico soya mate",2.95),
("2021-2-25", "dry produce","mony papadam",2.35),
("2021-2-25", "biscuit","hup seng cream biscuit",3.95),
("2021-2-25", "cooking oil","Basso Sunflower Oil 1L",9.80);

# 27-Feb-2021 grocery shopping data
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-2-27", "local vegetable","baby yam (arbi)",2.45),
("2021-2-27", "local vegetable","french bean",2.31),
("2021-2-27", "local vegetable","shittake mushroom",4.99),
("2021-2-27", "dry produce","pilsbury chakki aata 5kg",2.80),
("2021-2-27", "dry produce","samudra banana cake",4),
("2021-2-27", "frying oil","tiaga deep frying oil 1L",2.50);

# Jan 2021 - Grocery Shopping data
use logbook;
desc logbook.tbl_grocery;

# add grocery shopping data for 2-Jan-2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-1-2", "local vegetable","enrico soya mate",2.95),
("2021-1-2", "local vegetable","red chilli",4.42),
("2021-1-2", "local vegetable","curry leaf",0.79),
("2021-1-2", "local vegetable","tomato",5.87),
("2021-1-2", "local vegetable","red onion",4.83),
("2021-1-2", "local vegetable","potato",2.05),
("2021-1-2", "local vegetable","kollu daal",2.36),
("2021-1-2", "local vegetable","karela",3.53),
("2021-1-2", "local vegetable","pacha pata",3.17),
("2021-1-2", "dry produce","pilsbury aata 2kg",8.35),
("2021-1-2", "dairy produce","rasaku coconut milk 6pc",13.20),
("2021-1-2", "toiletries","Gilette Blue Razor pack (on promo)",13.29),
("2021-1-2", "toiletries","Harpic Toilet Tablets 6pcs x50gm",17.90);

# add grocery shopping data for 11-Jan-2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-1-11", "local vegetable","potato",4.04),
("2021-1-11", "local vegetable","garlic",2.46),
("2021-1-11", "local vegetable","curry leaf",1.43),
("2021-1-11", "local vegetable","tomato",7.83),
("2021-1-11", "local vegetable","red onion",6.06),
("2021-1-11", "local vegetable","potato",2.05),
("2021-1-11", "local vegetable","broccoli",3.69),
("2021-1-11", "local vegetable","cucumber",3.48),

("2021-1-11", "dry produce","pilsbury aata 5kg",20.80),
("2021-1-11", "dry produce","red kidney beans",2.51),
("2021-1-11", "dry produce","thoor daal",1.93),
("2021-1-11", "dry produce","Captain Cook 800gm Oats (green)",8.80),
("2021-1-11", "dry produce","Mighty White Bread",2.80),

("2021-1-11", "spices","jeera mix",0.83),
("2021-1-11", "spices","salt",0.50),

("2021-1-11", "tea","Boh Double Chamber Green Tea 50 pcs(promo)",9.39),
("2021-1-11", "tea","Promex Chocolate drink-25 packs (promo)",8.99);

# add grocery shopping data for 12-Jan-2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-1-12", "biscuit","hup seng cream crackers",3.99),
("2021-1-12", "dry produce","melawi daal",2.43),
("2021-1-12", "cooking oil","Basso Sunflower Oil 1L",9.80),
("2021-1-12", "butter","Crispo Margarine 1kg",4.50),
("2021-1-12", "fruit","gala red apple 8pcs",8.99),
("2021-1-12", "laundry","Royal Dish washing liquid 1L",3.90);

# add grocery shopping data for 27-Jan-2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-1-27", "local vegetable","green chilli",1.74),
("2021-1-27", "local vegetable","karela x3pcs",3.50),
("2021-1-27", "local vegetable","curry leaf",0.85),
("2021-1-27", "local vegetable","ginger",2.25),
("2021-1-27", "local vegetable","broccoli",3.29),
("2021-1-27", "local vegetable","cucumber",1.39),
("2021-1-27", "dry produce","cholle",3.93),
("2021-1-27", "dry produce","Moongfali ke daane",3.93),
("2021-1-27", "dry produce","Dry Matar",2.57),
("2021-1-27", "toiletries","Darlie Toothpaste twin pack charcoal flavour",15.90),
("2021-1-27", "toiletries","Antbax Bar Soap 3+1",4.90),
("2021-1-27", "coffee","Kopiko brow Coffee x25 packs(promo)",9.88);

# add grocery shopping data for 29-Jan-2021
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost)
values
("2021-1-29", "local vegetable","cucumber",1.22),
("2021-1-29", "local vegetable","tomato",5.07),
("2021-1-29", "spices","jeera",1.60),
("2021-1-29", "dry produce","samudra banana cake",4.30),
("2021-1-29", "dairy produce","yeo asli yogurt (6 tetrapack 250 ml each)",7.80);





