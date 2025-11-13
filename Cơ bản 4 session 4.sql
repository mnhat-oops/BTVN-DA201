-- 1. Cập nhật lương của nhân viên có EmployeeID = 2 
UPDATE Employees
Set Salary = 4800
Where Employeeid = 2;
-- 2. Cập nhật ngày tuyển dụng cho của nhân viên có Fistname = 'David'
UPDATE Employees
Set Hiredate = '2021-08-01'
Where Fistname = 'David';