create database class9 ;

use class9 ;

create table if not exists course (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50)) ;


create table if not exists student(
student_id int ,
student_name varchar(30),
student_mobile int ,
student_course_enroll varchar(30),
student_course_id int ) ;

insert into course values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language') ;

insert into student values(301 , "sudhanshu", 3543453,'yes', 101),
(302 , "sudhanshu", 3543453,'yes', 102),
(301 , "sudhanshu", 3543453,'yes', 105),
(302 , "sudhanshu", 3543453,'yes', 106),
(303 , "sudhanshu", 3543453,'yes', 111),
(304 , "sudhanshu", 3543453,'yes', 113),
(305 , "sudhanshu", 3543453,'yes', 115),
(306 , "sudhanshu", 3543453,'yes', 107),
(306 , "sudhanshu", 3543453,'yes', 103) ;

select * from course ;
select * from student ;

select course.course_id, student.student_course_id, course.course_name, course_tag,
student.student_name, student.student_id from 
course join student 
on course.course_id = student.student_course_id ;

select c.course_id, s.student_course_id, c.course_name, c.course_tag,
s.student_name, s.student_id from 
course c inner join student s
on c.course_id = s.student_course_id ;

select c.course_id, s.student_course_id, c.course_name, c.course_tag,
s.student_name, s.student_id from 
course c left join student s
on c.course_id = s.student_course_id ;

select c.course_id, s.student_course_id, c.course_name, c.course_tag,
s.student_name, s.student_id from 
course c right join student s
on c.course_id = s.student_course_id ;

select c.course_id, s.student_course_id, c.course_name, c.course_tag,
s.student_name, s.student_id from 
course c cross join student s ;

select c.course_id, s.student_course_id, c.course_name, c.course_tag,
s.student_name, s.student_id from 
course c  right join student s 
on c.course_id = s.student_course_id
where course_id is null ;


--------------------------------------------


CREATE TABLE Customers (
    CustomerID INT  ,
    CustomerName VARCHAR(100),
    ContactEmail VARCHAR(100),
    Country VARCHAR(50)
);


CREATE TABLE Products (
    ProductID INT  ,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50)
);



CREATE TABLE Orders (
    OrderID INT  ,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT);
    
    
INSERT INTO Customers (CustomerID, CustomerName, ContactEmail, Country) VALUES
(1, 'Alice Smith', 'alice@example.com', 'USA'),
(2, 'Bob Johnson', 'bob@example.com', 'USA'),
(3, 'Charlie Brown', 'charlie@example.com', 'Canada'),
(4, 'David Wilson', 'david@example.com', 'USA'),
(5, 'Eva Green', 'eva@example.com', 'UK'),
(6, 'Frank Black', 'frank@example.com', 'Canada'),
(7, 'Grace Lee', 'grace@example.com', 'Australia'),
(8, 'Henry White', 'henry@example.com', 'USA'),
(9, 'Isabella Martinez', 'isabella@example.com', 'Mexico'),
(10, 'Jack Taylor', 'jack@example.com', 'USA');



INSERT INTO Products (ProductID, ProductName, Price, Category) VALUES
(1, 'Laptop', 999.99, 'Electronics'),
(2, 'Smartphone', 499.99, 'Electronics'),
(3, 'Tablet', 299.99, 'Electronics'),
(4, 'Headphones', 199.99, 'Accessories'),
(5, 'Smartwatch', 249.99, 'Wearables'),
(6, 'Camera', 899.99, 'Photography'),
(7, 'Wireless Charger', 49.99, 'Accessories'),
(8, 'Monitor', 299.99, 'Electronics'),
(9, 'Keyboard', 89.99, 'Accessories'),
(10, 'Mouse', 49.99, 'Accessories');



INSERT INTO Orders (OrderID, CustomerID, ProductID, OrderDate, Quantity) VALUES
(1, 1, 2, '2023-10-01', 1),
(2, 1, 1, '2023-10-02', 1),
(3, 2, 3, '2023-10-03', 2),
(4, 3, 1, '2023-10-04', 1),
(5, 4, 5, '2023-10-05', 1),
(6, 5, 4, '2023-10-06', 2),
(7, 6, 6, '2023-10-07', 1),
(8, 7, 8, '2023-10-08', 1),
(9, 8, 7, '2023-10-09', 1),
(10, 9, 9, '2023-10-10', 3),
(11, 10, 10, '2023-10-11', 1),
(12, 1, 5, '2023-10-12', 1),
(13, 2, 1, '2023-10-13', 2),
(14, 3, 2, '2023-10-14', 1),
(15, 4, 3, '2023-10-15', 1);   

select * from customers ; 
select * from products ;
select * from orders ;

select c.*, p.*, o.* from 
customers c inner join orders o
on c.customerid = o.customerid 
inner join products p 
on o.productid = p.productid ;


select c.*, o.* from 
customers c natural join orders o ;

select c.*, s.* from 
course c natural join student s ;

--------------------------------------------------

CREATE TABLE Customers1 (
    newCustomerID INT  ,
    newCustomerName VARCHAR(100),
    newContactEmail VARCHAR(100),
    newCountry VARCHAR(50)
);

INSERT INTO Customers1 (newCustomerID, newCustomerName, newContactEmail, newCountry) VALUES
(1, 'Alice Smith', 'alice@example.com', 'USA'),
(2, 'Bob Johnson', 'bob@example.com', 'USA'),
(3, 'Charlie Brown', 'charlie@example.com', 'Canada'),
(4, 'David Wilson', 'david@example.com', 'USA'),
(11, 'Eva Green', 'eva@example.com', 'UK'),
(12, 'Frank Black', 'frank@example.com', 'Canada'),
(13, 'Grace Lee', 'grace@example.com', 'Australia'),
(14, 'Henry White', 'henry@example.com', 'USA'),
(15, 'Isabella Martinez', 'isabella@example.com', 'Mexico'),
(10, 'Jack Taylor', 'jack@example.com', 'USA');

select * from customers1 ; 

select customerid, customername from customers
union
select newcustomerid, newcustomername from customers1 ;

select customerid, customername, contactemail from customers
union
select newcustomerid, newcustomername from customers1 ;

select customerid, customername, contactemail from customers
union
select newcontactemail, newcustomerid, newcustomername from customers1 ;

select customerid, customername from customers
union all
select newcustomerid, newcustomername from customers1 ;



