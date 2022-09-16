create database quanLyBanHang;
use quanLyBanHang;
create table Customer(
cID int primary key,
cName varchar(45),
cAge int
);
create table Orders(
oID int primary key,
cID int ,
foreign key (cID) references Customer(cID),
oDate datetime,
oTotalPrice double
);
create table Product(
pID int primary key,
pName varchar(45),
pPrice double
);
create table OrderDetail(
oID int,
pID int,
primary key(oID,pID),
foreign key (oID) references Orders(oID),
foreign key (pID) references Product(pID),
odQTY varchar(45)
);
