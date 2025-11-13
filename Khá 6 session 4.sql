-- 1. Hiển thị toàn bộ nhân viên
Select *
From Employees;
-- 2. Hiển thị nhân viên có lương > 5000
Select *
From Employees
Where Salary > 5000;
-- 3. Hiển thị nhân viên sắp xếp theo ngày tuyển dụng giảm dần (mới nhất trước)
Select *
From Employees
Order By Hiredate DESC;