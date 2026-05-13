
CREATE TABLE t_school(ID INT, School_Name VARCHAR(40), 
Number_Of_Students INT, Number_Of_Teachers INT, 
Number_Of_Classrooms INT, EmailID VARCHAR(40));

select * from t_School ;

START TRANSACTION; 

INSERT INTO t_school(ID, School_Name, Number_Of_Students, Number_Of_Teachers,
Number_Of_Classrooms, EmailID) 
VALUES(1, "Boys Town Public School", 1000, 80, 12, "btps15@gmail.com");
 
commit ; 

rollback ;

INSERT INTO t_school(ID, School_Name, Number_Of_Students, Number_Of_Teachers,
Number_Of_Classrooms, EmailID) 
VALUES(1, "Boys Town Public School", 1000, 80, 12, "btps15@gmail.com"),
(2, "Guru Govind Singh Public School", 800, 35, 15, "ggps25@gmail.com" ) ;

SAVEPOINT savepoint_1;  


INSERT INTO t_school(ID, School_Name, Number_Of_Students, Number_Of_Teachers,
Number_Of_Classrooms, EmailID) 
VALUES(1, "Boys Town Public School", 1000, 80, 12, "btps15@gmail.com"),
(2, "Guru Govind Singh Public School", 800, 35, 15, "ggps25@gmail.com" ),
(3, "Delhi Public School", 1200, 30, 10, "dps101@gmail.com") ;

SAVEPOINT savepoint_2; 


INSERT INTO t_school(ID, School_Name, Number_Of_Students, Number_Of_Teachers,
Number_Of_Classrooms, EmailID) 
VALUES(1, "Boys Town Public School", 1000, 80, 12, "btps15@gmail.com"),
(2, "Guru Govind Singh Public School", 800, 35, 15, "ggps25@gmail.com" ),
(3, "Delhi Public School", 1200, 30, 10, "dps101@gmail.com"),
(4, "Ashoka Universal School", 1110, 40, 40, "aus17@gmail.com") ;

SAVEPOINT savepoint_3; 

rollback to savepoint_2 ;


--------------------------------------------------

create user "amit"@"localhost" identified by "amit1" ;

grant select on class9.products to "amit"@"localhost" ;

revoke select on class9.products from "amit"@"localhost" ;

select * from products ;

grant select on class9.*  to "amit"@"localhost" ;

revoke select on class9.* from "amit"@"localhost" ;

grant all on class9.* to "amit"@"localhost" ;

revoke all on class9.* from "amit"@"localhost" ;

drop user "amit"@"localhost" ;

grant insert, update on class9.products  to "amit"@"localhost" ;

--------------------------------------

select * from laptop_price ;

select price_inr, brand, `cpu`, ram, primary_storage, os from laptop_price ;

create view new_table as 
select price_inr, brand, `cpu`, ram, primary_storage, os from laptop_price ;

select * from new_table ;

create view new_table1 as 
select brand, sum(price_inr) as price from laptop_price
group by Brand ;

select * from new_table1 ;

select * from orders ;

select * from customers ;

select c.customerid,  o.customerid, c.customername, o.orderid, o.quantity from 
customers c inner join orders o
on c.customerid = o.customerid ;


create view new_table2  as
select c.customerid, c.customername, o.orderid, o.quantity from 
customers c inner join orders o
on c.customerid = o.customerid ;

select * from new_table2 ;

select * from laptop_data.laptop_price ;





