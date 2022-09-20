use quanlybanhang;
insert into customer values(1,'Minh Quan',10),
(2,'Ngoc Oanh',20),(3,'Hong Ha',50);
insert into orders values (1,1,'2006/3/21',null),
(2,2,'2006/3/23',null),(3,1,'2006/3/16',null);
insert into product values (1,'May Giat',3),
(2,'Tu Lanh',5),(3,'Dieu Hoa',7),(4,'Quat',1),
(5,'Bep Dien',2);
insert into Orderdetail values(1,1,3),(1,3,7),
(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);
select orders.oid, orders.oDate, orders.oTotalPrice
from orders;
select customer.cname
from customer right join orders on customer.cID=orders.cid
group by customer.cname;
select product.pName
from product right join orderdetail on product.pid=orderdetail.pid
group by product.pname;
select *
from customer left join orders on customer.cID=orders.cid
where orders.oID is null
group by customer.cname;
