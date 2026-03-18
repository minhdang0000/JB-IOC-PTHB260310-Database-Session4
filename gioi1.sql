create schema gioi1
create table gioi1.students(
	id serial primary key,
	full_name varchar,
	gender varchar,
	birth_year int,
	major varchar,
	gpa decimal(10,2)
);
insert into gioi1.students (full_name, gender, birth_year, major, gpa) values
('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
('Trần Thị Bích Ngọc', 'Nữ', 2001, 'Kinh tế', 3.2),
('Lê Quốc Cường', 'Nam', 2003, 'CNTT', 2.7),
('Phạm Minh Anh', 'Nữ', 2000, 'Luật', 3.9),
('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
('Lưu Đức Tài', 'Nam', 2004, 'Cơ khí', Null),
('Võ Thị Thu Hằng', 'Nữ', 2001, 'CNTT', 3.0);

-- Chèn dữ liệu mới:
insert into gioi1.students (full_name, gender, birth_year, major, gpa) values
('Phan Hoàng Nam', 'Nam', 2003, 'CNTT', 3.8)

-- Cập nhật dữ liệu:
update gioi1.students set gpa = 3.4 where full_name = 'Lê Quốc Cường'
-- Xóa dữ liệu:
delete from gioi1.students where gpa is null
-- Truy vấn cơ bản:
select * from gioi1.students where gpa >= 3.0 limit 3

-- Loại bỏ trùng lặp
select distinct major from gioi1.students

-- Sắp xếp:
select * from gioi1.students order by gpa desc,full_name asc
-- Tìm kiếm:
select * from gioi1.students where full_name like 'Nguyễn%'

--Khoảng giá trị:
select * from gioi1.students where birth_year between 2001 and 2003