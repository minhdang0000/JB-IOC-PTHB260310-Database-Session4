create schema gioi2
create table gioi2.products(
	id serial primary key,
	name varchar,
	category varchar,
	price int,
	stock int,
	manufacturer varchar
);
insert into gioi2.products(name, category, price, stock, manufacturer) values
('Laptop Dell XPS 13', 'Laptop', 25000000, 12,'Dell'),
('Chuột Logitech M90', 'Phụ kiện', 150000, 50,'Logitech'),
('Bàn phím cơ Razer', 'Phụ kiện', 2200000,0,'Razer'),
('Macbook Air M2', 'Laptop', 32000000, 7, 'Apple'),
('iPhone 14 Pro Max', 'Điện thoại', 35000000, 7, 'Apple'),
('Laptop Dell XPS 13', 'Laptop', 25000000, 12,'Dell'),
('Tai nghe AirPods 3', 'Phụ kiện', 4500000, Null, 'Apple');

-- Chèn dữ liệu mới:
insert into gioi2.products(name, category, price, stock, manufacturer) values
('Chuột không dây Logitech M170', 'Phụ kiện', 300000, 20, 'Logitech')
-- Cập nhật dữ liệu:
update gioi2.products set price = price*1.1 where manufacturer = 'Apple'

-- Xóa dữ liệu:
delete from gioi2.products where stock = 0

-- Lọc theo điều kiện:
select * from gioi2.products where price BETWEEN 1000000 AND 30000000

-- Lọc giá trị NULL:
select * from gioi2.products where stock is null

--Loại bỏ trùng:
select distinct manufacturer from gioi2.products

--Sắp xếp dữ liệu
select * from gioi2.products order by price desc,name asc

--Tìm kiếm (LIKE và ILIKE):
select * from gioi2.products where name ilike '%laptop%'

-- Giới hạn kết quả:
select * from gioi2.products limit 2 