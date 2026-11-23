create database abc;
use abc;
--1.Add Primary key constraint for SalesmanId column in Salesman table.
--Add default constraint for City column in Salesman table. 
--Add Foreign key constraint for SalesmanId column in Customer table.
--Add not null constraint in Customer_name column for the Customer table.

create table salesman( salesmanId int primary key, salesmanName varchar(30), commission int, city varchar(50) default 'Bangalore', age int);
insert into salesman values(101, 'Joe',50,'California',17),(102,'Simon',75,'Texas',25),(103, 'Jessie',105,'Florida',35),(104,'Danny',100,'Texas',22),(105,'Lia',65,'New Jersey',30);
create table customer( salesmanId int, customerId int, customerName varchar(50) not null, purchaseAmount int);
insert into customer values(101,2345,'Andrew',550),(103,1575,'Lucky',4500),(104,2345,'Andrew',4000),(107,3747,'Remona',2700),(110,4004,'Julia',4545);
create table orders(orderId int, customerId int, salesmanId int, orderDate date,amount money);

--2.Insert a new record in your Orders table
insert into orders values(5001,2345,101,'2021-07-04',550),(5003,1234,105,'2022-02-15',1500);

--3.Fetch the data where the Customer’s name is ending with ‘N’ also get the purchase amount value greater than 500
select customerName from customer where customerName like '%n' and purchaseAmount> 500;

--4.Using SET operators, retrieve the first result with unique SalesmanId values from two tables, 

select salesmanId from salesman union select salesmanId from customer;

--and the other result containing SalesmanId with duplicates from two tables.

select salesmanId from salesman union all select salesmanId from customer;

--5.Display the below columns which has the matching data. 
--Orderdate, Salesman Name, Customer Name, Commission, and City which has the range of Purchase Amount between 500 to 1500.

select orderDate, salesmanName,customerName,commission,city from orders as o join customer as c on  o.customerId=c.customerId join salesman as s on c.salesmanId= s.salesmanId where purchaseAmount between 500 and 1500;

--6.Using right join fetch all the results from Salesman and Orders table.
select * from orders as o right join customer as c on o.customerId=c.customerId right join salesman as s on c.salesmanId= s.salesmanId;
