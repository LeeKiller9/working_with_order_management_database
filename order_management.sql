-- create database ordermanagement2;

use ordermanagement2;

-- create table Customer(
-- 	cID int PRIMARY key,
--     Name VARCHAR(25),
--     cAge TINYINT
-- );

-- create table `Order`(
-- 	oID int PRIMARY key,
--     cID int,
--     oDate DATE,
--     oTotalPrice int DEFAULT Null,
--     FOREIGN KEY (cID) references Customer (cID)
-- );

-- create TABLE Product(
-- 	pID int PRIMARY key,
-- 	pName VARCHAR(25),
--     pPrice int
-- );

-- CREATE TABLE OrderDetail(
-- 	oID int,
--     pID int,
--     odQTY int,
--     FOREIGN KEY (oID) REFERENCES `Order` (oID),
--     FOREIGN KEY (pID) REFERENCES Product (pID)
-- );

-- select `order`.oID, `order`.oDate, product.pPrice
-- from `order` join orderdetail on `order`.oID = orderdetail.oID join product on orderdetail.pID = product.pID;

-- select customer.Name, product.pName
-- from customer join `order` on customer.cID = `order`.cID join orderdetail on `order`.oID = orderdetail.oID join product on orderdetail.pID = product.pID;

-- create view view_1 as
-- select customer.Name, customer.cID, `order`.oID 
-- from customer left join `order` on customer.cID = `order`.cID;

-- select * 
-- from view_1
-- WHERE oID is NULL;

-- select customer.Name, customer.cID, `order`.oID 
-- from customer left join `order` on customer.cID = `order`.cID
-- where oID is Null;

-- select `order`.oID, `order`.oDate, sum(orderdetail.odQTY * product.pPrice) as Total
-- from `order` join orderdetail on `order`.oID = orderdetail.oID join product on orderdetail.pID = product.pID
-- group by `order`.oID;