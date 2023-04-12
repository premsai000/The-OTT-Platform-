 ----------     Orders 
CREATE TABLE Orders (
    order_ID int NOT NULL,
    order_date date NOT NULL,
    contact_id int,
    PRIMARY KEY (order_ID),
    FOREIGN KEY (contact_id) REFERENCES contact(contact_id)
); 


insert into orders(order_id,contact_id,order_date) values(23457,123,'2023-10-01');
insert into orders(order_id,contact_id,order_date) values(23464,126,'2022-10-02');
insert into orders(order_id,contact_id,order_date) values(23471,129,'2021-05-02');
insert into orders(order_id,contact_id,order_date) values(23478,132,'2021-05-02');
insert into orders(order_id,contact_id,order_date) values(23485,135,'2019-06-03');
insert into orders(order_id,contact_id,order_date) values(23492,138,'2021-06-03');
insert into orders(order_id,contact_id,order_date) values(23499,141,'2022-10-02');
insert into orders(order_id,contact_id,order_date) values(23506,144,'2021-07-03');
insert into orders(order_id,contact_id,order_date) values(23513,147,'2002-06-03');
insert into orders(order_id,contact_id,order_date) values(23520,150,'2002-06-03');
insert into orders(order_id,contact_id,order_date) values(23527,153,'2022-10-02');
insert into orders(order_id,contact_id,order_date) values(23534,156,'2022-10-02');
insert into orders(order_id,contact_id,order_date) values(23541,159,'2019-05-02');
insert into orders(order_id,contact_id,order_date) values(23548,162,'2019-05-02');
insert into orders(order_id,contact_id,order_date) values(23555,165,'2019-05-02');
insert into orders(order_id,contact_id,order_date) values(23562,168,'2019-06-03');
insert into orders(order_id,contact_id,order_date) values(23569,171,'2018-06-03');
insert into orders(order_id,contact_id,order_date) values(23576,174,'2019-07-03');
insert into orders(order_id,contact_id,order_date) values(23583,177,'2018-06-03');
insert into orders(order_id,contact_id,order_date) values(23590,180,'2018-06-03');
insert into orders(order_id,contact_id,order_date) values(23597,183,'2022-10-02');
insert into orders(order_id,contact_id,order_date) values(23604,186,'2018-06-03');
insert into orders(order_id,contact_id,order_date) values(23611,189,'2018-06-03');
insert into orders(order_id,contact_id,order_date) values(23618,192,'2018-06-03');
insert into orders(order_id,contact_id,order_date) values(23625,195,'2019-07-03');
insert into orders(order_id,contact_id,order_date) values(23632,198,'2018-06-03');
insert into orders(order_id,contact_id,order_date) values(23639,201,'2018-06-03');
insert into orders(order_id,contact_id,order_date) values(23646,204,'2022-10-02');
insert into orders(order_id,contact_id,order_date) values(23653,207,'2022-10-02');

--   product

CREATE TABLE product (
  product_id int not null,
  Name varchar(255) ,
  price  decimal(10,6) ,
  duration varchar(255) ,
    base nvarchar(1),
  Bolt_on nvarchar(1),
  tax decimal (10,6),
  primary key (product_id)
  
)


insert into product(Product_id,Name,Price,Duration,base,Bolt_on,tax) values (111,'entertainment','74.99','30 days','T',null,0);
insert into product(Product_id,Name,Price,Duration,base,Bolt_on,tax) values (112,'Choice','99.99','30 days','T',null,0);
insert into product(Product_id,Name,Price,Duration,base,Bolt_on,tax) values (114,'Ultimate','109.99','30 days','T',null,0);
insert into product(Product_id,Name,Price,Duration,base,Bolt_on,tax) values (155,'Premier ','154.99','30 days','T',null,0);
insert into product(Product_id,Name,Price,Duration,base,Bolt_on,tax) values (1111,'Hbomax','14.99','30 days',null,'T',0);
insert into product(Product_id,Name,Price,Duration,base,Bolt_on,tax) values (1121,'Showtime','11','30 days',null,'T',0);
insert into product(Product_id,Name,Price,Duration,base,Bolt_on,tax) values (1141,'Epix','6','30 days',null,'T',0);
insert into product(Product_id,Name,Price,Duration,base,Bolt_on,tax) values (1551,'starz ','11','30 days',null,'T',0);
 
--  contact
 
create table contact
( contact_id int not null,
 LastName varchar(255) ,
    FirstName varchar(255)NOT NULL,
    Age int,
    phone_number varchar(15),
    email varchar(255),
     phone_otp_ver nvarchar(1)
    ,email_otp_ver nvarchar(1),
    PRIMARY KEY (contact_id)
    )
    ;
    insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(123,'dhubey','Aaradhya',22,6308131925,'Aaradhya@gmail.com','T',null);
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(126,'reddy','Adah',25,6302172024,'Adah@gmail.com','T',null)         ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(129,'raj','Adhira',19,6301112232,'Adhira@gmail.com','T',null)       ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(132,'mishra','Alisha',22,6301321233,'Alisha@gmail.com','T',null)    ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(135,'roje','Amoli',28,6305162328,'Amoli@gmail.com','T',null)        ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(138,'nik','Anaisha',26,6302243235,'Anaisha@gmail.com','T',null)     ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(141,'vin','Ananya',28,6302528394,'Ananya@gmail.com','T',null)       ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(144,'diz','Anika',45,6309174247,'Anika@gmail.com','T',null)         ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(147,'nen','Anushka',56,6300161923,'Anushka@gmail.com','T',null)     ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(150,'vasu','Asmee',34,6304263541,'Asmee@gmail.com','T','T')         ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(153,'polo','Avni',33,3301923252,'Avni@gmail.com','T','T')           ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(156,'den','Carina',45,3307192527,'Carina@gmail.com','T','T')        ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(159,'nobe','Chara',55,3301214253,'Chara@gmail.com','T','T')         ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(162,'math','Drishti',67,3302025313,'Drishti@gmail.com','T','T')     ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(165,'reddy','Ela',67,3300182437,'Ela@gmail.com','T','T')            ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(168,'reddy','Eshika',76,3301831394,'Eshika@gmail.com','T','T')      ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(171,'venkat','Geetika',33,3301015273,'Geetika@gmail.com','T',null)  ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(174,'reddy','Gulika',33,3309214647,'Gulika@gmail.com','T','T')      ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(177,'reddy','Hiya',55,3301323253,'Hiya@gmail.com','T','T')          ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(180,'ram','Hiral',77,3301418252,'Hiral@gmail.com','T','T')          ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(183,'den','Ira',91,3308192232,'Ira@gmail.com','T','T')              ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(186,'df','Ishana',77,3301621243,'Ishana@gmail.com','T','T')         ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(189,'ch','Ishita',23,3302531323,'Ishita@gmail.com','T','T')         ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(192,'reddy','Jeevika',34,3301522264,'Jeevika@gmail.com','T','T')    ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(195,'den','prem',91,3301721222,'prem@gmail.com','T',null)           ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(198,'kr','sai',77,3301819353,'sai@gmail.com','T',null)              ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(201,'jin','reddy',23,3302263031,'reddy@gmail.com','T',null)         ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(204,'bun','phani',34,3306192335,'phani@gmail.com','T',null)         ;
insert into contact (contact_id,LastName,FirstName,age,phone_number,email,email_otp_ver,phone_otp_ver) values(207,'roger','reddie',91,3305272830,'reddie@gmail.com','T',null)     ;

--   ordered_product

create table ordered_product(
ordered_product_id int,	product_id int,	srv_start_date datetime,	srv_end_date datetime ,
PRIMARY KEY (ordered_product_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
)

;

INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53457,1121,'2023-10-01','2023-10-31');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53462,111,'2023-10-01','2023-10-31');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53467,1111,'2023-10-01','2023-10-31');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53472,114,'2022-10-02','2022-11-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53477,155,'2021-05-02','2021-06-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53482,111,'2021-05-02','2021-06-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53487,1551,'2021-05-02','2021-06-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53492,114,'2019-06-03','2019-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53497,155,'2021-06-03','2021-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53502,111,'2022-10-02','2022-11-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53507,112,'2021-07-03','2021-08-02');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53512,1141,'2021-07-03','2021-08-02');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53517,155,'2002-06-03','2002-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53522,111,'2022-10-02','2022-11-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53527,112,'2022-10-02','2022-11-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53532,155,'2022-10-02','2022-11-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53537,1121,'2022-10-02','2022-11-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53542,111,'2019-05-02','2019-06-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53547,112,'2019-05-02','2019-06-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53552,114,'2019-05-02','2019-06-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53557,155,'2019-06-03','2019-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53562,111,'2018-06-03','2018-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53567,112,'2019-07-03','2019-08-02');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53572,112,'2018-06-03','2018-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53577,155,'2018-06-03','2018-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53582,111,'2022-10-02','2022-11-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53587,112,'2018-06-03','2018-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53592,114,'2018-06-03','2018-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53597,155,'2018-06-03','2018-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53602,155,'2019-07-03','2019-08-02');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53607,114,'2018-06-03','2018-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53612,155,'2018-06-03','2018-07-03');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53617,155,'2022-10-02','2022-11-01');
INSERT into ordered_product (ordered_product_id,product_id,srv_start_date,srv_end_date) values(53622,155,'2022-10-02','2022-11-01');

-- order_item

create table order_item(
	order_item_id int not null,	order_id int not null,ordered_product_id int not null,
PRIMARY KEY (order_item_id),
    FOREIGN KEY (ordered_product_id) REFERENCES ordered_product(ordered_product_id)
);


insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2345,23457,53457);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2352,23457,53462);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2359,23457,53467);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2366,23464,53472);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2373,23471,53477);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2380,23478,53482);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2387,23478,53487);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2394,23485,53492);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2401,23492,53497);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2408,23499,53502);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2415,23506,53507);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2422,23506,53512);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2429,23513,53517);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2436,23520,53522);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2443,23527,53527);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2450,23534,53532);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2457,23534,53537);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2464,23541,53542);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2471,23548,53547);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2478,23555,53552);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2485,23562,53557);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2492,23569,53562);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2499,23576,53567);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2506,23583,53572);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2513,23590,53577);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2520,23597,53582);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2527,23604,53587);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2534,23611,53592);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2541,23618,53597);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2548,23625,53602);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2555,23632,53607);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2562,23639,53612);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2569,23646,53617);
insert into order_item(order_item_id ,	order_id ,ordered_product_id) values(2576,23653,53622);


-- promotion

create table promotion (
	promotion_id int not null,	 promotion_code varchar(30) not null,
    promotion_name varchar(30) not null,price_off varchar(30) not null,
PRIMARY KEY (promotion_id)
);

insert into promotion (promotion_id	,promotion_code,	promotion_name,	price_off) values(1,	'off_10',	'10$off',	10);
insert into promotion (promotion_id	,promotion_code,	promotion_name,	price_off) values(2,	'off_5',	'5$off',     5);
insert into promotion (promotion_id	,promotion_code,	promotion_name,	price_off) values(3,	'off_15',	'15$off',	15);

 
 -- op_promotion

create table op_promotion (
	op_promo_id int not null,	 promotion_id int not null, amount decimal(10,6) not null,promo_start_date date not null ,
	promo_end_date date not null,ordered_product_id int not null ,
PRIMARY KEY (op_promo_id),
 FOREIGN KEY (ordered_product_id) REFERENCES ordered_product(ordered_product_id)
);



insert into op_promotion (op_promo_id,promotion_id,amount,promo_start_date,promo_end_date,ordered_product_id) values(10,	1,	10	,'2023-10-01'	,'2023-10-31',	53457);
insert into op_promotion (op_promo_id,promotion_id,amount,promo_start_date,promo_end_date,ordered_product_id) values(11,	2,	5	,'2022-10-02'	,'2022-11-01',	53622);
insert into op_promotion (op_promo_id,promotion_id,amount,promo_start_date,promo_end_date,ordered_product_id) values(12,	3,	15	,'2021-05-02'	,'2021-06-01',	53487);

-- payment  
create table payment (payment_id int not null,	order_id int not null,	contact_id int not null,payment_date date not null,
	payment_method varchar(30),	price decimal(10,6),
PRIMARY KEY (payment_id),
 FOREIGN KEY (order_id) REFERENCES orders(order_id),
 FOREIGN KEY (contact_id) REFERENCES contact(contact_id)
 );
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112263,23471,129,'2021-05-02','gpay',109.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112266,23478,132,'2021-05-02','applepay',154.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112269,23485,135,'2019-06-03','samsungpay',74.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112272,23492,138,'2021-06-03','gpay',99.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112275,23499,141,'2022-10-02','samsungpay',109.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112278,23506,144,'2021-07-03','gpay',154.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112281,23513,147,'2002-06-03','visa',74.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112284,23520,150,'2002-06-03','visa',99.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112287,23527,153,'2022-10-02','visa',109.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112290,23534,156,'2022-10-02','discover',154.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112293,23541,159,'2019-05-02','amex',74.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112296,23548,162,'2019-05-02','mastercard',99.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112299,23562,168,'2019-06-03','discover',154.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112302,23569,171,'2018-06-03','discover',74.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112305,23576,174,'2019-07-03','amex',99.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112308,23583,177,'2018-06-03','mastercard',109.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112311,23590,180,'2018-06-03','discover',154.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112314,23597,183,'2022-10-02','amex',74.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112317,23604,186,'2018-06-03','mastercard',99.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112320,23618,192,'2018-06-03','discover',154.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112323,23625,195,'2019-07-03','amex',74.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112326,23632,198,'2018-06-03','mastercard',99.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112329,23639,201,'2018-06-03','discover',109.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112332,23646,204,'2022-10-02','amex',154.99);
insert into payment(payment_id,order_id,contact_id,payment_date,payment_method,price) values(112335,23653,207,'2022-10-02','amex',154.99);



                                                                                                                                                                                  