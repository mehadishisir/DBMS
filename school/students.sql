CREATE TABLE students (
  students_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  age INT,
  grade CHAR(2),
  course VARCHAR(50),
  email VARCHAR(100) UNIQUE,
  dob DATE,
  blood_group VARCHAR(5),
  country VARCHAR(5)
);

-- view table

select * from students

-- insert data into table
INSERT INTO students
(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('Mehadi','Hasan',23,'A+','CSE','mehadi1@gmail.com','2003-05-10','O+','BD'),
('Rahim','Uddin',22,'A','EEE','rahim@gmail.com','2004-02-15','A+','BD'),
('Karim','Mia',21,'B+','BBA','karim@gmail.com','2005-08-20','B+','BD'),
('Sakib','Ahmed',24,'A','CSE','sakib@gmail.com','2002-03-11','AB+','BD'),
('Jihad','Islam',20,'B','English','jihad@gmail.com','2006-01-25','O-','BD'),
('Nayeem','Hossain',23,'A+','CSE','nayeem@gmail.com','2003-11-19','A-','BD'),
('Tamim','Khan',22,'A','EEE','tamim@gmail.com','2004-09-30','B-','BD'),
('Rifat','Ali',21,'B+','Law','rifat@gmail.com','2005-12-12','O+','BD'),
('Shuvo','Rahman',25,'A+','CSE','shuvo@gmail.com','2001-04-08','AB-','BD'),
('Fahim','Hasan',24,'A','BBA','fahim@gmail.com','2002-06-17','A+','BD'),

('Nafis','Kabir',20,'B','English','nafis@gmail.com','2006-07-22','B+','BD'),
('Arif','Haque',22,'A','EEE','arif@gmail.com','2004-01-09','O+','BD'),
('Imran','Sarker',23,'A+','CSE','imran@gmail.com','2003-10-05','A-','BD'),
('Rakib','Molla',21,'B+','Economics','rakib@gmail.com','2005-03-16','B-','BD'),
('Sumon','Das',24,'A','CSE','sumon@gmail.com','2002-08-27','AB+','BD'),
('Asif','Iqbal',22,'B+','Law','asif@gmail.com','2004-05-18','O-','BD'),
('Rony','Islam',20,'B','BBA','rony@gmail.com','2006-02-14','A+','BD'),
('Shakil','Ahmed',23,'A','EEE','shakil@gmail.com','2003-09-09','B+','BD'),
('Noman','Hasib',21,'A+','CSE','noman@gmail.com','2005-11-01','AB-','BD'),
('Sabbir','Hossain',24,'A','English','sabbir@gmail.com','2002-07-13','O+','BD'),

('Mahin','Rahman',22,'B+','Economics','mahin@gmail.com','2004-12-24','A-','BD'),
('Rasel','Mia',23,'A','CSE','rasel@gmail.com','2003-01-28','B+','BD'),
('Siam','Hasan',20,'B','EEE','siam@gmail.com','2006-10-06','O+','BD'),
('Adnan','Kabir',25,'A+','Law','adnan@gmail.com','2001-05-15','AB+','BD'),
('Tanvir','Ahmed',21,'A','CSE','tanvir@gmail.com','2005-06-30','A+','BD'),
('Mizan','Islam',22,'B+','BBA','mizan@gmail.com','2004-08-11','O-','BD'),
('Habib','Uddin',24,'A','English','habib@gmail.com','2002-09-21','B-','BD'),
('Robin','Khan',23,'A+','EEE','robin@gmail.com','2003-03-07','AB+','BD'),
('Sohel','Molla',20,'B','CSE','sohel@gmail.com','2006-04-19','O+','BD'),
('Arafat','Haque',22,'A','Economics','arafat@gmail.com','2004-11-02','A+','BD');


-- select some data from table
select email,dob from students

-- sorting 
select * from students order by age desc

-- alias

select students_id as "id" from students


-- distinct
select distinct course from students

-- where
select  first_name,blood_group,course from students where course = 'CSE';
-- aand or
select * from students where course = 'CSE' and age = '21'
select * from students where course = 'CSE' or course = 'BBA'
select * from students where course = 'CSE' and (age = 22 or blood_group = 'O+')

-- between and in

select * from students where age between 20 and 23
select * from students where grade in ( 'A' , 'A+')
select * from students where students_id in (2,5,10,15)
select * from students where age between 21 and 24  and course in ('CSE' ,'EEE')
-- like vs ilike

select * from students where first_name like 'S%';
select * from students where email like '%gmail.com';
select * from students where first_name ilike '%im%';