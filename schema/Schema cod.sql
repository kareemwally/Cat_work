--creating customer table:
create table customer(ID int(11) primary key auto_increment,
full_name varchar(60) not null,adress varchar(60),phone varchar(60),age varchar(3), gender varchar(6),password varchar(20));

--creating department table:
create table department(ID int(11) primary key auto_increment ,name varchar(30));

--creating employees table:
create table employees(
ID int(11) primary key auto_increment
,email varchar(30)
,name varchar(30),salary int(11)
,departmentID int(11),
foreign key(departmentID) references department(ID));

--creating admins table:
create table admins(ID int (11) primary key auto_increment
,email varchar(30)
,password varchar(30)
,employeeID int (11),
 foreign key(employeeID) references employees(ID) );
 
 --creating products table:
create table products(ID int (11) primary key auto_increment
,name varchar(50)
,category varchar(30)
,price int(11));

--creating orders table:
create table orders(ID int (11) primary key auto_increment
,customerID int (11)
,productID int(11)
,amount int(11)
,date datetime
,foreign key(productID) references products(ID)
,foreign key(customerID) references customer(ID)
);
