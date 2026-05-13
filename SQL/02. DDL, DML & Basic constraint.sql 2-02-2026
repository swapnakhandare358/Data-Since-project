-- DDL Commands

show databases ;
create database class9 ;
create database if not exists class9 ;
use class9 ;
show tables ;
create table employee (`name` varchar(20), department varchar(20)) ;
create table if not exists employee
(`name` varchar(20), department varchar(20)) ;
insert into employee values ("suraj", "sales") ;
insert into employee (`name`) values ("suraj1") ;
alter table employee
add column salary int ;
alter table employee
add column age int after `name` ;
alter table employee
add column emp_id varchar(10) first  ;
alter table employee
rename column `name` to full_name ;
alter table employee
add column doj varchar(10) ;
desc employee ;
alter table employee
modify column doj date ;
update employee
set emp_id = 101 where full_name = "suraj" ;
update employee
set emp_id = 102 where full_name = "suraj1" ;
delete from employee
where emp_id = 102 ;
insert into employee 
values("102", "hardik", 28, "marketing", 28000, "2022-10-01" ) ; 
insert into employee 
values("103", "hardik", 28, "marketing", 28000, "2022-10-01" ),
("104", "hardik", 28, "marketing", 28000, "2022-10-01" ),
("105", "hardik", 28, "marketing", 28000, "2022-10-01" ),
("106", "hardik", 28, "marketing", 28000, "2022-10-01" ),
("107", "hardik", 28, "marketing", 28000, "2022-10-01" ),
("108", "hardik", 28, "marketing", 28000, "2022-10-01" ) ; 
update employee
set salary= 21000 where emp_id = "107" ;
delete from employee
where emp_id = 106 ;
update employee
set department = null where emp_id = "103" ;
update employee
set age = null  ;
alter table employee
drop column age ;
update employee
set full_name =  "deepak" where department is null ;
rename table employee to emp ;
truncate table emp ;
select * from emp ;
desc emp ;


-- SQL Constraint

-- not null
-- unique
-- default
-- check 
-- auto increment
-- enum

create table students (
ID int auto_increment primary key,
fullname varchar(20) not null,
age int not null check(age>=18),
address varchar(20) default "INDIA",
email varchar(20) unique,
subjects enum ("math", "English", "Science", "history") 
);

insert into students (fullname, age, address, email, subjects)
values
("shivam1", 20, "nagpur", "shivam1@gmail.com", "english") ;

insert into students ( age, address, email, subjects)
values
(20, "nagpur", "shivam2@gmail.com", "english") ;

insert into students (fullname, age, address, email, subjects)
values
("tilak", 21, null, "shivam2@gmail.com", "english") ;

insert into students (fullname, age,  email, subjects)
values
("tilak", 21, "shivam3@gmail.com", "english") ;

insert into students (fullname, age,  email, subjects)
values
("tilak2", 21, "shivam4@gmail.com", null) ;

insert into students (fullname, age,  email, subjects)
values
("tilak2", 21, null, null) ;

select * from students ;

desc students ;








