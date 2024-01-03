create database Computer_Company;
use Computer_Company;

create table Customer (
Username varchar(50) not null ,
Unique(Username),
Phone varchar(50),
Email_Address varchar(255),
First_name varchar(20),
Last_name varchar(20),
primary key (Username)
);

INSERT INTO Customer (Username, First_name, Last_name, Email_Address, Phone)
VALUES ('SparkyLion', 'Spencer', 'Lyon', 'spencer.lyon@outlook.com', '+1 505-646-6395'),
       ('Cortana', 'Hannah', 'Miles', 'hannah.miles@gmail.com', '+12029182132'),
       ('FluffyPanda', 'Fiona', 'Paine', 'fiona.paine@yahoo.com', '+14722058462'),
       ('LunarEclipse', 'Lucas', 'Ellis', 'lucas.ellis@bing.com', '+15056467639'),
       ('MysticRose', 'Mia', 'Ross', 'mia.ross@hotmail.com', '+15056467472'),
       ('SilverFox', 'Simon', 'Fox', 'simon.fox@msn.com', '+15059084407'),
       ('DarthVader', 'Simon', 'Riley', 'darth.vader@icloud.com', '+13469070820'),
       ('John117', 'John', 'Starr', 'john117@aol.com', '+12128534414'),
       ('FrostySnowman', 'Finn', 'Snow', 'finn.snow@zoho.com', '+15056320539'),
       ('SunnyDaisy', 'Sadie', 'Davis', 'sadie.davis@protonmail.com', '+12052973068'),
       ('LuckyClover', 'Logan', 'Clover', 'logan.clover@yandex.com', '+15056925190'),
       ('OceanBreeze', 'Olivia', 'Breen', 'olivia.breen@mail.com', '+15056464130'),
       ('LaraCroft', 'Lara', 'Croft', 'lara.croft@edu.com', '+15056449841'),
       ('StarBoy', 'Chloe', 'Blossom', 'chloe.blossom@live.com', '+15057286914'),
       ('ChocolateChip', 'Noah', 'Owen', 'noah.owen@me.com', '+14722118477'),
       ('CoolCat', 'Grace', 'Sun', 'grace.sun@bing.com', '+15056442836'),
       ('CaramelApple', 'Parker', 'Monroe', 'parker.monroe@gmail.com', '+15086948984'),
       ('GoldenSun', 'Cara', 'Appleby', 'cara.appleby@yahoo.com', '+14722293963'),
       ('ArthurMorgan', 'Arthur', 'Morgan', 'arthur.morgan@hotmail.com', '+15207773819'),
       ('NightOwl', 'Cole', 'Carter', 'cole.carter@outlook.com', '+12073956432');
       
create table Order_Details (
Order_no int not null ,
O_Date Date ,
Total_Paid int,
O_Status varchar (20),
Username varchar(50),
foreign key (Username) references Customer(Username),
Primary key (Order_no)
);
INSERT INTO Order_Details (Order_no, O_Date, O_Status, Username, Total_Paid)
VALUES (1, '2023-01-25', 'Delivered', 'SparkyLion', 549.99),
       (2, '2023-01-27', 'Delivered', 'Cortana', 399.99),
       (3, '2023-02-06', 'Delivered', 'FluffyPanda', 1779.98),
       (4, '2023-02-17', 'Delivered', 'LunarEclipse', 2129.98),
       (5, '2023-02-28', 'Delivered', 'MysticRose', 2049.98),
       (6, '2023-03-03', 'Delivered', 'SilverFox', 2499.99),
       (7, '2023-04-06', 'Delivered', 'DarthVader', 3999.99),
       (8, '2023-04-18', 'Delivered', 'John117', 3299.98),
       (9, '2023-05-09', 'Delivered', 'FrostySnowman', 2199.98),
       (10, '2023-05-21', 'Delivered', 'SunnyDaisy', 3499.97),
       (11, '2023-06-08', 'Delivered', 'LuckyClover', 3399.97),
       (12, '2023-06-30', 'Delivered', 'OceanBreeze', 2599.97),
       (13, '2023-07-22', 'Delivered', 'LaraCroft', 2349.98),
       (14, '2023-07-27', 'Delivered', 'StarBoy', 2149.97),
       (15, '2023-08-09', 'Delivered', 'ChocolateChip', 2149.97),
       (16, '2023-09-12', 'Delivered', 'CoolCat', 3599.97),
       (17, '2023-10-06', 'Delivered', 'CaramelApple', 5899.97),
       (18, '2023-11-23', 'Delivered', 'GoldenSun', 3749.97),
       (19, '2023-12-28', 'Pending', 'ArthurMorgan', 3879.97),
       (20, '2023-12-29', 'Pending', 'NightOwl', 849.98);

create table Product (
P_ID int not null,
P_Name varchar (50),
Price int,
Category varchar(20),
primary key (P_ID)
);

INSERT INTO Product (P_ID, P_Name, Price, Category)
VALUES (2941, 'Asus ROG Strix XG27UQ', 549.99,'Monitor'),
       (6227, 'Asus ProArt PA278QV', 399.99,'Monitor'),
       (6426, 'Asus TUF Gaming VG27VQ', 279.99,'Monitor'),
       (4686, 'Asus ZenScreen MB16AT', 229.99,'Monitor'),
       (4119, 'Asus VA24EHE', 149.99,'Monitor'),
       (6086, 'Asus ROG Strix G35KC', 2499.99,'Desktop'),
       (8888, 'Asus ProArt Station PA90', 3999.99,'Desktop'),
       (7897, 'Asus ROG Strix GT35C', 1799.99,'Desktop'),
       (6628, 'Asus ExpertCenter D531', 699.99,'Desktop'),
       (8698, 'Asus VivoPC X422', 399.99,'Desktop'),
       (8446, 'Asus ROG Zephyrus G14', 1499.99,'Laptop'),
       (8197, 'Asus ZenBook 14 OLED', 1099.99,'Laptop'),
       (3310, 'Asus Chromebook Flip CX5', 549.99,'Laptop'),
       (5402, 'Asus TUF Gaming F15', 999.99,'Laptop'),
       (8965, 'Asus VivoBook S15 OLED', 599.99,'Laptop'),
       (2098, 'Asus ExpertBook B9450', 1699.99,'Laptop'),
       (6042, 'Asus ROG Strix G15 Advantage Edition', 1699.99,'Laptop'),
       (7877, 'Asus ZenBook Flip 17 UX970', 1499.99,'Laptop'),
       (5222, 'Asus ROG Flow Z13', 1899.99,'Laptop'),
       (9248, 'Asus Vivobook X515', 449.99,'Laptop');


create table Department (
D_Name varchar(50),
Dnumber int not null,
Mgr_ID int,
primary key (Dnumber)
);
INSERT INTO Department (D_Name, Dnumber, Mgr_ID)
VALUES ('Research and Development', 1, 96325),
       ('Engineering and Design', 2, 74125),
       ('Sales and Marketing', 3, 10475),
       ('Customer Support and Services', 4, 36985);

create table Employee (
ID int not null,
First_Name varchar (20) not null,
Last_Name varchar (20) not null,
Salary int,
Dnumber int ,
foreign key (Dnumber) references Department(Dnumber),
primary key (ID)

);
INSERT INTO Employee (ID, First_Name, Last_Name, Salary, Dnumber)
VALUES (10475, 'Emily', 'Johnson', 75400, 3),
       (29358, 'Michael', 'Davis', 58200, 3),
       (56892, 'Olivia', 'Williams', 62500, 1),
       (74125, 'Sophia', 'Brown', 81500, 2),
       (95236, 'Jacob', 'Miller', 69300, 2),
       (38569, 'Ethan', 'Jones', 55400, 3),
       (85692, 'Isabella', 'Garcia', 78200, 1),
       (14753, 'Aiden', 'Rodriguez', 66500, 4),
       (96325, 'Mia', 'Wilson', 85400, 1),
       (58963, 'Liam', 'Martinez', 52100, 3),
       (25896, 'Ava', 'Anderson', 60500, 1),
       (36985, 'Noah', 'Taylor', 75300, 4),
       (85236, 'Lucas', 'Thomas', 68400, 2),
       (96385, 'Isabella', 'Hernandez', 57200, 3),
       (14526, 'Sofia', 'Moore', 61500, 1),
       (52369, 'Mason', 'Jackson', 80500, 4),
       (85632, 'Riley', 'Thompson', 67500, 2),
       (96583, 'Amelia', 'White', 56300, 3),
       (15472, 'Oliver', 'Lopez', 63500, 1),
       (67554, 'Isabella', 'Isabella', 57785, 1);

create table Develops (
P_ID int not null,
Dnumber int not null,
foreign key(P_ID) references Product(P_ID),
foreign key(Dnumber) references Department(Dnumber)
);
INSERT INTO Develops (P_ID, Dnumber)
VALUES (2941, 2),
       (2941, 1),
       (6227, 1),
       (6227, 3),
       (6426, 2),
       (6426, 3),
       (4119, 2),
       (4119, 1),
       (6086, 1),
       (6086, 2),
       (8888, 1),
       (8888, 3),
       (6628, 2),
       (6628, 3),
       (8698, 2),
       (8698, 1),
       (8446, 1),
       (8446, 3),
       (8197, 2),
       (8197, 3),
       (3310, 1),
       (3310, 3),
       (8965, 1),
       (8965, 2),
       (2098, 2),
       (2098, 1),
       (6042, 2),
       (6042, 3),
       (7877, 1),
       (7877, 2),
       (5222, 3),
       (5222, 1),
       (9248, 2),
       (9248, 1),
       (4686, 1),
       (4686, 2),
       (7897, 2),
       (7897, 3),
       (5402, 1),
       (5402, 3);

create table Monitors (
P_ID int not null,
Screen_Size int,
Resolution varchar(20),
Refresh_Rate int,
foreign key(P_ID) references Product(P_ID)
);

INSERT INTO Monitors (P_ID, Screen_Size, Resolution, Refresh_Rate)
VALUES (2941, 27, '2560 x 1440', 170),
       (6227, 27, '3840 x 2160', 60),
       (6426, 27, '1920 x 1080', 165),
       (4686, 15.6, '1920 x 1080', 60),
       (4119, 24, '1920 x 1080', 75);

create table Desktops(
P_ID int not null,
RAM varchar (20),
Hard_Disk varchar(50),
D_CPU varchar(50),
GPU varchar(100),
foreign key(P_ID) references Product(P_ID)
);
INSERT INTO Desktops (P_ID, RAM, Hard_Disk, D_CPU, GPU)
VALUES (6086, '32GB DDR4', '1TB HDD + 512GB PCIe SSD', 'AMD Ryzen 7 7800X', 'NVIDIA GeForce RTX 3070 Ti 8GB'),
       (8888, '64GB DDR4', '2TB PCIe SSD', 'Intel Core i9-13900K', 'NVIDIA GeForce RTX A5000 16GB'),
       (7897, '16GB DDR4', '1TB HDD + 512GB PCIe SSD', 'Intel Core i7-13700K', 'NVIDIA GeForce RTX 3060 Ti 8GB'),
       (6628, '8GB DDR4', '256GB PCIe SSD', 'Intel Core i5-13400', 'Integrated Intel UHD Graphics'),
       (8698, '4GB DDR4', '128GB SSD', 'AMD Ryzen 3 5300U', 'Integrated AMD Radeon Graphics');

create table Laptops (
P_ID int not null,
Battery_Life varchar(50),
Size varchar(20),
Weight varchar(20),
foreign key(P_ID) references Product(P_ID)

);

INSERT INTO Laptops (P_ID, Battery_Life, Size, Weight)
VALUES (8446, 'Up to 9.5 hours', '14 inches', '3.5 lbs'),
       (8197, 'Up to 17 hours', '14 inches', '2.87 lbs'),
       (3310, 'Up to 12 hours', '15.6 inches', '4.04 lbs'),
       (5402, 'Up to 7 hours', '15.6 inches', '4.85 lbs'),
       (8965, 'Up to 15 hours', '15.6 inches', '3.79 lbs'),
       (2098, 'Up to 23 hours', '14 inches', '2.2 lbs'),
       (6042, 'Up to 8 hours', '15.6 inches', '5.31 lbs'),
       (7877, 'Up to 15 hours', '17.3 inches', '4.73 lbs'),
       (5222, 'Up to 12 hours', '13.4 inches', '2.43 lbs'),
       (9248, 'Up to 7 hours', '15.6 inches', '4.07 lbs');


create table Payment (
Transaction_no int not null,
P_Type char(4),
Installment varchar(30),
primary key (Transaction_no)
);

INSERT INTO Payment (Transaction_no, P_Type, Installment)
VALUES (15468923, 'Cash', 'No Installment'),
       (78954126, 'Card', '6 Months'),
       (45218796, 'Card', '12 Months'),
       (21546897, 'Cash', 'No Installment'),
       (95412687, 'Card', 'No Installment'),
       (65482193, 'Card', '6 Months'),
       (35421896, 'Cash', 'No Installment'),
       (87542169, 'Cash', 'No Installment'),
       (41526897, 'Card', '12 Months'),
       (25481693, 'Card', 'No Installment'),
       (78542169, 'Cash', 'No Installment'),
       (54821693, 'Card', '6 Months'),
       (14528693, 'Card', '12 Months'),
       (96548213, 'Cash', 'No Installment'),
       (85421697, 'Card', 'No Installment'),
       (74582169, 'Card', '6 Months'),
       (45821693, 'Cash', 'No Installment'),
       (58214693, 'Card', '12 Months'),
       (14582693, 'Cash', 'No Installment'),
       (78524169, 'Card', 'No Installment');

create table Pays (
Transaction_no int not null,
Username varchar(50) not null,
Order_no int not null,
foreign key(Transaction_no) references Payment(Transaction_no),
foreign key(Username) references Customer(Username),
foreign key(Order_no) references Order_Details(Order_no)
);
INSERT INTO Pays (Transaction_no, Username, Order_no)
VALUES (15468923, 'SparkyLion', 1),
       (78954126, 'Cortana', 2),
       (45218796, 'FluffyPanda', 3),
       (21546897, 'LunarEclipse', 4),
       (95412687, 'MysticRose', 5),
       (65482193, 'SilverFox', 6),
       (35421896, 'DarthVader', 7),
       (87542169, 'John117', 8),
       (41526897, 'FrostySnowman', 9),
       (25481693, 'SunnyDaisy', 10),
       (78542169, 'LuckyClover', 11),
       (54821693, 'OceanBreeze', 12),
       (14528693, 'LaraCroft', 13),
       (96548213, 'StarBoy', 14),
       (85421697, 'ChocolateChip', 15),
       (74582169, 'CoolCat', 16),
       (45821693, 'CaramelApple', 17),
       (58214693, 'GoldenSun', 18),
       (14582693, 'ArthurMorgan', 19),
       (78524169, 'NightOwl', 20);


create table O_Contains (
Order_no int not null,
P_ID int not null,
foreign key(Order_no) references Order_Details(Order_no),
foreign key(P_ID) references Product(P_ID)
);
INSERT INTO O_Contains (P_ID, Order_no)
VALUES (2941, 1),
       (2941, 15),
       (2941, 18),
       (6227, 2),
       (6227, 12),
       (6227, 16),
       (6227, 11),
       (6426, 3),
       (6426, 19),
       (4686, 4),
       (4119, 5),
       (4119, 14),
       (6086, 6),
       (6086, 10),
       (6086, 17),
       (8888, 7),
       (7897, 8),
       (7897, 13),
       (6628, 9),
       (8698, 10),
       (8698, 20),
       (8446, 11),
       (8446, 8),
       (8446, 11),
       (8446, 9),
       (8446, 16),
       (8197, 12),
       (8197, 12),
       (3310, 13),
       (5402, 14),
       (5402, 15),
       (5402, 14),
       (8965, 15),
       (8965, 10),
       (2098, 16),
       (6042, 17),
       (6042, 18),
       (6042, 19),
       (6042, 17),
       (7877, 18),
       (7877, 3),
       (5222, 19),
       (5222, 5),
       (5222, 4),
       (9248, 20);


show tables;

/*Find the names and salaries of all employees who work in the department of sales and have a salary greater than 50000. */
select First_name, Last_name ,Salary from Employee where Dnumber ='3' and Salary > 50000;

/*Find the names and phone numbers of all customers who have ordered a product with the name ‘Asus ROG Zephyrus G14’. */
select First_name , Last_name, Phone from Customer c, Order_Details o where c.Username = o.Username and Order_no in (select Distinct(Order_no) from O_Contains where P_ID =(select P_ID from Product where P_Name =  'Asus ROG Zephyrus G14' ) ) ;

/*Find out which customers have ordered products from desktop or laptop categories */
select c.Username from Customer c, Order_Details o where c.Username = o.Username and Order_no in(select Order_no from O_Contains where P_ID in (select P_ID from Product where Category ='Desktop' or Category ='Laptop'));

/*Find the order numbers and dates of all orders that have a total paid amount greater than 1000.*/
select Order_no , O_Date from Order_Details where Total_Paid >1000;

/*Find the names and prices of all products that belong to the laptop category.*/
select P_name , Price from Product where Category ='Laptop';

/*Find the order numbers and total paid amounts of all orders that have a status of ‘delivered’ and were placed in the month of December.*/
select Order_no , Total_Paid from Order_Details where O_Status ='Delivered' and month(O_Date)='12';

/*Get the contact details of the customer who placed order number 15*/
select Email_Address , Phone from Customer c ,Order_Details o where c.Username = o.Username and Order_no =15 ;

/*List name and ID of Employees who work for department which is manageb by manager ID = 96325*/
select First_Name , Last_Name , ID from Employee E, Department D where Mgr_ID= 96325 and E.Dnumber = D.Dnumber;

select avg(Screen_Size) from Monitors;
