-- Create database CSDL_session04_01
create database CSDL_session04_01;
-- Create table students
create table students(
    id serial primary key,
	name varchar(50),
	age int,
	major varchar(50),
	gpa numeric(3, 2)
);

-- Insert data into table students
select * from students;
insert into students(name, age, major, gpa) values
('An', 20, 'CNTT', 3.5),
('Bình', 21, 'Toán', 3.2),
('Cường', 22, 'CNTT', 3.8),
('Dương', 20, 'Vật lý', 3.0),
('Em', 21, 'CNTT', 2.9);
-- Add a new student into table students
insert into students(name, age, major, gpa) values
('Hùng', 23, 'Hóa học', 3.4);
-- Update 'gpa' with name of student as 'Bình'
update students
set gpa = 3.6
where name = 'Bình';
-- delete students with gpa lower than 3.0
delete from students where gpa < 3.0;
-- show only name and major, sorted by gpa in descending order
select name , major from students order by gpa desc;
-- show only student whose major is "CNTT"
select distinct name from students where major = 'CNTT'; 
-- show students have gpa from 3.0 to 3.6
select * from students where gpa between 3.0 and 3.6;
-- show students whose names begin with the letter 'C'
select * from students where name ilike 'c%';
-- show 3 students in ascending order of name
select * from students order by name asc limit 3 offset 0;
-- show students with id from 2 to 4
select * from students order by id asc limit 3 offset 1;