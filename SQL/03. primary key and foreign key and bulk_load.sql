use class1 ;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    `name` VARCHAR(100),
    age INT,
    city VARCHAR(100)
);

INSERT INTO students (student_id, `name`, age, city) VALUES
(1, 'John Doe', 18, 'New York'),
(2, 'Jane Smith', 17, 'Los Angeles'),
(3, 'Michael Johnson', 19, 'Chicago'),
(4, 'Emily Davis', 18, 'Houston');


CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(100),
    instructor VARCHAR(100),
    student_id int,
    FOREIGN KEY(student_id)
	REFERENCES students(student_id)
);

INSERT INTO courses (course_id, course_name, instructor, student_id) VALUES
(101, 'Mathematics', 'Prof. Smith', 1),
(102, 'Science', 'Dr. Johnson', 2),
(103, 'History', 'Prof. Brown', 3);


update courses 
set student_id = 5 where course_id = 1 ;

update students 
set student_id = 5 where student_id = 1 ;

delete from students
where student_id = 3 ;

delete from courses
where student_id = 3 ;


select * from students ;

select * from courses ;

desc students; 
----------------------------------------------------------------

CREATE TABLE students1 (
    student_id INT PRIMARY KEY,
    `name` VARCHAR(100),
    age INT,
    city VARCHAR(100)
);

INSERT INTO students1 (student_id, `name`, age, city) VALUES
(null, 'John Doe', 18, 'New York'),
(2, 'Jane Smith', 17, 'Los Angeles'),
(3, 'Michael Johnson', 19, 'Chicago'),
(4, 'Emily Davis', 18, 'Houston');


CREATE TABLE courses1 (
    course_id INT,
    course_name VARCHAR(100),
    instructor VARCHAR(100),
    student_id int,
    FOREIGN KEY(student_id)
	REFERENCES students1(student_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO courses1 (course_id, course_name, instructor, student_id) VALUES
(101, 'Mathematics', 'Prof. Smith', null),
(102, 'Science', 'Dr. Johnson', 2),
(103, 'History', 'Prof. Brown', null);


select * from students1 ;

select * from courses1 ;

update students1 
set student_id = 5 where student_id = 1 ;

delete from students1
where student_id = 3 ;


create table emp (
id int primary key,
`name` varchar(20));

create table dept(
dept_id int,
dept_name varchar(20),
emp_id int,
foreign key (emp_id)
references emp(id) ) ;


create table salary (
pf int,
salary int,
emp_id int,
foreign key(emp_id)
references emp(id) ) ;

---------------------------------

create table if not exists course (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50));

show index from course ;

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
(108 , 'c++' , 'C++ language' , 'language');

select * from course ;

explain select * from course where course_name = "java" ;

@@@@@@@@@@@@@@@



create table if not exists course1 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_name));


insert into course1 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');


select * from course1 ;

explain select * from course1 where course_name = "java" ;


@@@@@@@@@@@@@@@@@@@@@@


create table if not exists course2 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_id, course_name));


show index from course2 ;

insert into course2 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');


explain select * from course2 where course_name = "java" ;

explain select * from course2 where course_id = 103  and course_name = "fsds" ;

analyze table course2;

EXPLAIN ANALYZE select * from course2 where course_id = 106 or course_name = 'fsds';