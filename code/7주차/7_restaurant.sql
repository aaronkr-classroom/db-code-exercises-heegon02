-- Customer Table
create table Customer (
	customer_id int primary key, 
	name VARCHAR(100), 
	phone varchar(11), 
	address varchar(100)
);

-- Restaurant Table
create table Restaurant (
	restaurant_id int primary key, 
	name varchar(100), 
	phone varchar(11), 
	address varchar(100)
);

-- Orders Table
create table Orders (
	order_id int primary key, 
	customer_id int, 
	restaurant_id int, 
	order_date timestamp, 
	total numeric, 
	foreign key (customer_id) references Customer(customer_id), 
	foreign key (restaurant_id) references Restaurant(restaurant_id)
);

-- Delivery
create table Delivery (
	delivery_id int primary key, 
	order_id int, 
	driver_name varchar(100), 
	status int, 
	foreign key (order_id) references Orders(order_id)
);

-- Data 삽입
insert into Customer values 
(1, 'Alice', '01011112222', '충주'), 
(2, '김수민', '01033334444', '청주');

insert into Restaurant values 
(1, 'Pizza Place', '01055556666', '충주'), 
(2, '김밥천국', '01077778888', '서울');

insert into Orders values 
(1, 1, 1, '2026-04-13 15:17:00', 24000), 
(2, 2, 2, '2026-04-13 12:17:00', 8000);

insert into Delivery values 
(1, 1, '지석준', 1), -- 0:받았다, 1:조리하다, 2:배달중, 3:배달완료, 4:취소 
(2, 2, '송지현', 2);

-- DB 쿼리
select * from Orders;
select * from Orders order by total DESC;
select * from Orders where total >= 10000;
select * from Delivery where status = 1;

