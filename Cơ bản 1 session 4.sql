SQL
Create database companydb;
Use companydb;
Create table employees(
Employee_id int not null key auto_increment,
Fistname varchar(50),
Lastname varchar(50)
);