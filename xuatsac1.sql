-- create table employees(
-- 	id serial primary key,
-- 	full_name varchar,
-- 	department varchar,
-- 	position varchar,
-- 	salary int,
-- 	bonus int,
-- 	join_year int
-- );
-- insert into employees(full_name, department, position, salary, bonus, join_year)
-- values
-- ('Nguyễn Văn Huy', 'IT', 'Developer',18000000 ,1000000 ,2021),
-- ('Trần Thị Mai','HR','Recruiter',12000000,Null,2020),
-- ('Lê Quốc Trung','IT','Tester',15000000,800000,2023),
-- ('Nguyễn Văn Huy', 'IT', 'Developer',18000000 ,1000000 ,2021),
-- ('Phạm Ngọc Hân','Finance','Accountant',14000000,Null,2019),
-- ('Bùi Thị Lan','HR','HR Manager',20000000,3000000,2018),
-- ('Đặng Hữu Tài','IT','Developer',17000000,Null,2022);

-- Cập nhật lương thưởng:
-- Tăng 10% lương cho những nhân viên làm trong phòng IT có mức lương dưới 18,000,000
update employees set salary=salary*1.1 where salary < 18000000
-- Với nhân viên có bonus IS NULL, đặt giá trị bonus = 500000
update employees set bonus = 500000 where bonus IS NULL

-- Hiển thị danh sách nhân viên thuộc phòng IT hoặc HR, gia nhập sau năm 2020, và có tổng thu nhập (salary + bonus) lớn hơn 15,000,000
select * from employees where join_year >= 2020 and salary + bonus > 15000000
-- Chỉ lấy 3 nhân viên đầu tiên sau khi sắp xếp giảm dần theo tổng thu nhập
select * from employees  order by (salary+bonus) desc limit 3
-- Truy vấn theo mẫu tên:
select * from employees where full_name like 'Nguyễn%' or full_name like '%Hân'
-- Truy vấn đặc biệt:
select distinct department from employees where bonus is not null
-- Khoảng thời gian làm việc:
select * from employees where join_year between 2019 and 2022