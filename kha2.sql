-- create schema kha2;
-- CREATE TABLE kha2.products (
--     id     SERIAL PRIMARY KEY,
--     name    VARCHAR(100),
--     category VARCHAR(50),
--     price   DECIMAL(10,2),
--     stock   INT
-- );

-- INSERT INTO kha2.products (name, category, price, stock) VALUES
--     ('Laptop Dell', 'Electronics', 1500.00, 5),
--     ('Chuột Logitech', 'Electronics',25.50,50),
--     ('Bàn phím Razer', 'Electronics',120.00,20),
--     ('Tủ lạnh LG', 'Home Appliances',800.00, 3),
--     ('Máy giặt Samsung', 'Home Appliances',600.00, 2);

insert into kha2.products (name,category,price,stock) values
('Điều hòa Panasonic', 'Home Appliances', 400.00, 10)

-- Cập nhật stock của 'Laptop Dell' thành 7
update kha2.products set stock = 7 where name = 'Laptop Dell'

-- Liệt kê tất cả sản phẩm theo giá tăng dần
select * from kha2.products order by price

-- Liệt kê danh mục duy nhất của các sản phẩm (DISTINCT)
select distinct category from kha2.products

-- Liệt kê sản phẩm có giá từ 100 đến 1000
select * from kha2.products where price between 100 and 1000

-- Liệt kê các sản phẩm có tên chứa từ 'LG' hoặc 'Samsung' (sử dụng LIKE/ILIKE)
select * from kha2.products where name like '%LG%' or name like '%Samsung%'

--Hiển thị 2 sản phẩm đầu tiên theo giá giảm dần, hoặc lấy sản phẩm thứ 2 đến thứ 3 bằng LIMIT và OFFSET
select * from kha2.products order by price desc limit 2

select * from kha2.products order by price desc limit 2 offset 1