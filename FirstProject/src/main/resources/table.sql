CREATE TABLE Department(
	dept_id INT PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE Subject(
	sub_id INT PRIMARY KEY,
	sub_name VARCHAR(30) NOT NULL
);

CREATE TABLE Student(
	stud_id INT PRIMARY KEY,
	stud_name VARCHAR(30) NOT NULL,
	age INT,
	dept_id INT REFERENCES Department,
	year INT,
	semester INT
);

CREATE TABLE Professor(
	prof_id INT PRIMARY KEY,
	prof_name VARCHAR(30) NOT NULL,
	dept_id INT REFERENCES Department,
	age INT
);

CREATE TABLE Class(
	cid int PRIMARY KEY,
	sub_id INT REFERENCES Subject,
	prof_id INT REFERENCES Professor
);

CREATE TABLE Attendance(
	cid INT REFERENCES Class,
	stud_id INT REFERENCES Student,
	sub_id INT REFERENCES Subject,
	date Date NOT NULL,
	prof_id INT REFERENCES Professor,
	status INT
);


insert into department(dept_id,dept_name) values (205,'IT');

insert into department(dept_id,dept_name) values (100,'CSE');

insert into department(dept_id,dept_name) values (123,'EEE');

insert into department(dept_id,dept_name) values (106,'ECE');


insert into subject (sub_id,sub_name) values(100,'Engineering Graphics');

insert into subject (sub_id,sub_name) values(101,'Engineering Maths');

insert into professor (prof_id,prof_name,dept_id,age) values (101,'Muthu',123,30);

insert into professor (prof_id,prof_name,dept_id,age) values (102,'Venkat',106,33);

insert into professor (prof_id,prof_name,dept_id,age) values (104,'Raja',205,30);

insert into student (stud_id,stud_name,age,dept_id,year,semester) values (1000,'Raja',22,205,4,7);


insert into student (stud_id,stud_name,age,dept_id,year,semester) values (1001,'Aswin',22,205,4,7);


insert into student (stud_id,stud_name,age,dept_id,year,semester) values (1002,'Vijay',22,205,4,7);


insert into student (stud_id,stud_name,age,dept_id,year,semester) values (1000,'Ram',22,205,4,7);


insert into class (cid,sub_id,prof_id) values (12,100,101);

insert into Attendance(cid,sub_id,stud_id,date,prof_id,status) values (12,100,1001,'01-20-2022',101,1);

insert into Attendance(cid,sub_id,stud_id,date,prof_id,status) values (12,100,1002,'01-20-2022',101,1);


